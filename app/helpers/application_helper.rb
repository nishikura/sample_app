module ApplicationHelper

# �y�[�W���Ƃ̊��S�ȃ^�C�g����Ԃ�
  def full_title(page_title = '')	  # ���\�b�h��`����
	base_title = "Ruby on Rails Tutorial Sample App"  # �ϐ��̑���ƃI�v�V����
	if page_title.empty?	# �_���l�Ńe�X�g
	  base_title			# �ÖٓI�ȕԂ�l
	else
	  page_title + " | " + base_title	  # ������̌���
	end
  end
end
