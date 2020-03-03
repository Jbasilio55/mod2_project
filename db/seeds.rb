# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
    User.create(name: Faker::Name.name, username: Faker::TvShows::GameOfThrones.character, password: Faker::TvShows::GameOfThrones.house)
end

20.times do
    Artist.create(name: Faker::Music.band)
end

20.times do
    Song.create(name: Faker::TvShows::FamilyGuy.character, length: rand(2..9), genre: Faker::Music.genre, artist_id: Artist.all.sample.id)
end

20.times do 
    Playlist.create(playlist_name: Playlist.all.sample.id, user_id: User.all.sample.id, counter: 0)
end

20.times do
    PlaylistSong.create(playlist_id: Playlist.all.sample.id, song_id: Song.all.sample.id, counter: 0)
end