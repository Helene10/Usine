# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


#DOCTOR
10.times do
  part = Part.create!(part_number: Faker::Name.first_name)
end

#PATIENTS
10.times do
  assemblage = Assemblage.create!(name: Faker::Name.first_name)
end

#APPOINTMENT 
15.times do
  assemblage_part = AssemblagePart.create!(part_id: Part.find(1+rand(9)).id, assemblage_id: Assemblage.find(1+rand(9)).id)
end