# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

Artist.reset_pk_sequence
Genre.reset_pk_sequence
Song.reset_pk_sequence

range = (1..10).to_a

10.times do
  Artist.create(name:Faker::Music.band, bio:Faker::Lorem.paragraph)
  Genre.create(name:Faker::Music.genre)
  Song.create(name:Faker::Book.title, artist_id:range.sample, genre_id:range.sample)
end

puts "db loaded up!"