class ChangeIntegerIdMediaInstagramMedia < ActiveRecord::Migration[7.0]
  def change
    change_column :instagram_media, :id_media, :integer, limit: 8
  end
end
