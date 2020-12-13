class Uploader < ApplicationRecord

  #photo validation
  has_attached_file :photo, styles: {large: "450x450>", thumb: "50x50#"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  
  #music validation
  has_attached_file :music, validate_media_type: false
  validates_attachment :music,
  :content_type => {:content_type => ["audio/mpeg", "audio/mp3"]},
  :file_type => {:matches => [/mp3\Z/]}
  
  end
  