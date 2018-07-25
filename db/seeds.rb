# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.delete_all
Restaurant.delete_all

puts "deleted restaurants"
5.times do
  Restaurant.create(
    name: Faker::Pokemon.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w(chinese japanese italian belgian french).sample)
end

puts "created #{Restaurant.count} restaurants"
