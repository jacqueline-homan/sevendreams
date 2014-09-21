class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name  # Column for album name of type string
      t.string :category # Column for photography category of type string

      t.timestamps
    end
  end
end
