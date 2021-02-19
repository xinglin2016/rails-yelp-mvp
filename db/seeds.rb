# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts "Creating restaurants..."

category_list = %w[chinese italian japanese french belgian]
10.times do
  restaurant = Restaurant.new(
    name: Faker::Commerce.product_name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: category_list.sample
  )
  restaurant.save!
end

puts "Finished!"
