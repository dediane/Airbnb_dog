# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
10.times do 
  dog = Dog.create!(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    age: Faker::Creature::Dog.age
  )
  dogsitter = Dogsitter.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

15.times do 
  dogsitter = Dogsitter.all.sample
  dog = Dog.all.sample
  stroll = Stroll.create!(dogsitter:dogsitter, dog:dog, date: Faker::Time.between_dates(from: Date.today, to: Date.today + 10, period: :day))
end
