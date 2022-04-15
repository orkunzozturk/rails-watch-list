# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
List.destroy_all
puts "Destroyed all previous instances of lists"

Movie.destroy_all
puts "Destroyed all previous instances of movies"

Bookmark.destroy_all
puts "Destroyed all previous instances of bookmarks"


10.times do
  List.create(name: Faker::Book.genre)
end
puts "added 10 lists"



10.times do
  Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: "https://m.media-amazon.com/images/I/61ux6FzCdGL._AC_SL1280_.jpg", rating: Faker::Number.between(from: 0.0, to: 5.0))
end
puts "added 10 movies"

10.times do
  Bookmark.create(comment: "a bookmark", movie: Movie.first, list: List.first)
end
puts "added some bookmarks"
