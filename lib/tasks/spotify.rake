namespace :spotify do
  desc "get all djs and create SpotifyArtists for them"
  task :get_djs => :environment do

    SpotifyArtist.destroy_all #cleanup table

    require 'rspotify'

    RSpotify.authenticate('8ab66d9b69f74e76adf7f316dc97e073', '47643978a0454bff9341415c5a86848a')

    Dj.all.each do |dj|
      artist = RSpotify::Artist.search(dj.name).first

      SpotifyArtist.new({ :name => artist.name,
                          :spotify_id => artist.id,
                          :popularity => artist.popularity,
                          :dj => dj}).save

    end

  end

end