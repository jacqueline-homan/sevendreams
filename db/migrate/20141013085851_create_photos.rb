class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos, force: true do |t|
      t.integer :album_id
      t.string :image
    
      t.timestamps
    end
  end
end
