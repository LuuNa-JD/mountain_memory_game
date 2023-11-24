# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
images = []
(1..20).each do |i|
  images << "cards/mountain#{i}.png"

  images.each do |image|
    Card.create(name: image.split('/').last.split('.').first, image_url: image, matched: false)
  end

end
