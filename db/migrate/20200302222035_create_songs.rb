class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :length
      t.string :genre
      t.integer :artist_id

      t.timestamps
    end
  end
end
