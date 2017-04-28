class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process resize_to_limin: [400, 400]
  
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  # �A�b�v���[�h�t�@�C���̕ۑ���f�B���N�g���͏㏑���\
  # ���L�̓f�t�H���g�̕ۑ���
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # �A�b�v���[�h�\�Ȋg���q�̃��X�g
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end