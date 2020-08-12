# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating 10 fake flats...'

10.times do
  flat = Flat.new(name: Faker::Movie.title,
                  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
                  description: Faker::Lorem.paragraph,
                  price_per_night: rand(17..70),
                  number_of_guests: rand(1..8))
  flat.save!
end

puts 'Finished!'
