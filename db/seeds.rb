# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.delete_all
Album.delete_all
Genre.delete_all

a1 = Album.create(name: 'album1')
a2 = Album.create(name: 'album2')
a3 = Album.create(name: 'album3')

g1 = Genre.create(name: 'genre1')
g2 = Genre.create(name: 'genre2')
g3 = Genre.create(name: 'genre3')
g4 = Genre.create(name: 'genre4')
g5 = Genre.create(name: 'genre5')

# genre - song | one many
# assign genre to song
s1 = g1.songs.create(name: 'song1', price: 10)
s2 = g2.songs.create(name: 'song2', price: 12)
s3 = g3.songs.create(name: 'song3', price: 15)
s4 = g3.songs.create(name: 'song4', price: 10)


# song - album | many many
a1.album_songs.create(song_id: s1.id)
a2.album_songs.create(song_id: s2.id)
a3.album_songs.create(song_id: s4.id)

