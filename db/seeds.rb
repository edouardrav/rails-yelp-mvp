# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
categories = %w(chinese italian japanese french belgian)
10.times do
  resto = Restaurant.new
  resto.name = Faker::Restaurant.name
  resto.address = Faker::Address.full_address
  resto.phone_number = Faker::PhoneNumber.phone_number
  resto.category = categories.sample
  resto.save!
end
