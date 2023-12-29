# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
images = []

# Ajoutez chaque image une fois dans la liste
(1..20).each do |i|
  images << "cards/mountain#{i}.png"
end

# Mélangez la liste d'images
images.shuffle!

# Créez les cartes en paires
images.each do |image|
  name = image.split('/').last.split('.').first
  next if Card.exists?(name: name)

  2.times do
    Card.create(name: name, image_url: image, matched: false)
  end
end
