class AddAttachmentPhotoMusicToUploaders < ActiveRecord::Migration[6.0]
  def self.up
    change_table :uploaders do |t|
      t.attachment :photo
      t.attachment :music
    end
  end

  def self.down
    remove_attachment :uploaders, :photo
    remove_attachment :uploaders, :music
  end
end
