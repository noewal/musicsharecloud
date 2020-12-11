class CreateUploaders < ActiveRecord::Migration[6.0]
  def change
    create_table :uploaders do |t|
      t.string :title
      t.text :info

      t.timestamps
    end
  end
end
