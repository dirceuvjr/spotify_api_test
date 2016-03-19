namespace :spotify do
  desc "get all djs and create SpotifyArtists for them"
  task :get_djs => :environment do

    require 'rspotify'

    Dj.all.each do |dj|
      artist = RSpotify::Artist.search(dj.name).first

      SpotifyArtist.new({ :name => artist.name,
                          :spotify_id => artist.id,
                          :popularity => artist.popularity}).save

    end

  end

  desc "TODO"
  task :my_task2 => :environment do
  end
end