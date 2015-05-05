# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.destroy_all

interest_arr = [ "sports", "music" , "yoga", "cricket", "travel", "Photography","Skydive","adventure", "claymastery","celebrations","walk","pottery","mingle","water","life"]


2500.times do |index|
	Employee.create({name:Faker::Name.name, first_name:Faker::Name.first_name,
	                 last_name:Faker::Name.last_name,
	                 age:Random.rand(20..100),email: Faker::Internet.email,
									 ssn:Faker::Number.number(8),about: Faker::Lorem.sentence(3, true),interests: interest_arr.sample(4)
									})
end