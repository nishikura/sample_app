module ApplicationHelper

  # �y�[�W���Ɋ��S�ȃ^�C�g����Ԃ�         # �h�L�������g�Ƃ��ẴR�����g
  def full_title(page_title = '')                     # ���\�b�h��`�ƃI�v�V��������
    base_title = "Ruby on Rails Tutorial Sample App"  # �ϐ��̑��
    if page_title.empty?                              # �_���l�Ńe�X�g
      base_title                                      # �ÖٓI�ȕԂ�l
    else
      page_title + " | " + base_title                 # ������̌���
    end
  end
end


