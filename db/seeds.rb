require 'faker'

puts "Seeding users..."

User.destroy_all

50.times do
  User.create!(
    first_name:     Faker::Name.first_name,
    last_name:      Faker::Name.last_name,
    email:          Faker::Internet.unique.email,
    username:       Faker::Internet.unique.username(specifier: 5..10),
    password_digest:       'password',
    date_of_birth:  Faker::Date.birthday(min_age: 18, max_age: 65),
    phone_number:   Faker::PhoneNumber.cell_phone_in_e164,
    address:        Faker::Address.street_address,
    city:           Faker::Address.city,
    country:        Faker::Address.country
  )
end

puts "Finished seeding users."
