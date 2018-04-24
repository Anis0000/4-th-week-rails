# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

30.times do
    user = User.create(name: Faker::Name.name)
    puts user
    article = Article.new
    puts "Création article"
    article.user_id = user.id
    article.name = Faker::Lorem.words
    article.body = Faker::Lorem.words(5)
    article.description = Faker::Lorem.words(3)
    article.save
end
