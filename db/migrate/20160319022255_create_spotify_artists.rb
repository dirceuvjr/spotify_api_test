class CreateSpotifyArtists < ActiveRecord::Migration
  def self.up
    create_table :spotify_artists do |t|
      t.string :spotify_id
      t.string :name
      t.integer :popularity
      t.references :dj

      t.timestamps
    end
  end

  def self.down
    drop_table :spotify_artists
  end
end
