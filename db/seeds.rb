# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Favourite.destroy_all
Review.destroy_all
Car.destroy_all
Owner.destroy_all

owner1 = Owner.create!(nickname: "Dipesh")
owner2 = Owner.create!(nickname: "Luke")
owner3 = Owner.create!(nickname: "Sophie")

Car.create!(
  brand: "Mercedes",
  model: "A-Class Hatchback",
  year: 2024,
  fuel: "Unleaded petrol",
  owner: owner2
)

Car.create!(
  brand: "Peugeot",
  model: "308",
  year: 2017,
  fuel: "Unleaded petrol",
  owner: owner1
)

Car.create!(
  brand: "Tesla",
  model: "Model 3",
  year: 2023,
  fuel: "Electric",
  owner: owner3
)

puts "Seed data created successfully!"
