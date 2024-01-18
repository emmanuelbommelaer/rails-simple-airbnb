# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Starting fake data generation"
10.times do
  Flat.create!(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_night: (50..500).to_a.sample,
    number_of_guests: (2..16).to_a.sample
  )
  puts "flat generated"
end
puts "ok"
