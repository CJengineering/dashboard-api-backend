class CreateInstagramMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :instagram_media do |t|
      t.integer :like_count
      t.string :media_type
      t.text :media_url
      t.integer :id_media
      t.integer :comments_count
      t.date :timestamp

      t.timestamps
    end
  end
end
