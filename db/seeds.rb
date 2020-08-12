# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating 5 fake restaurants...'
cuisines = []
cuisines = %w(chinese italian japanese french belgian)
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    phone_number: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.street_address,
    category: cuisines.sample
    )
  restaurant.save!
  end

