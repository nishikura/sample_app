module SessionsHelper

  # �^����ꂽ���[�U�[�����O�C��
  def log_in(user)
    session[:user_id] = user.id
  end

  # �i���Z�b�V�����Ƃ��ă��[�U�[���L������
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # �^����ꂽ���[�U�[�����O�C���ς݃��[�U�[�ł����true��Ԃ�
  def current_user?(user)
    user == current_user
  end

  
  # �L���g�[�N��cookie�ɑΉ����郆�[�U�[��Ԃ�
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end


    
  # �i���I�Z�b�V������j������
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # ���[�U�[�����O�C�����Ă����true�A���̑��Ȃ�false��Ԃ�
  def logged_in?
    !current_user.nil?
  end
  
  # ���݂̃��[�U�[�����O�A�E�g����
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
  
  # �L������URL (�������̓f�t�H���g�l) �Ƀ��_�C���N�g
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # �A�N�Z�X���悤�Ƃ���URL���o���Ă���
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
end
