# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test_user = User.create(email: 'test@test.com')
test_trip = Trip.create(origin: 'metro center', destination: 'waterfront', name: 'commute')
test_trip.user_id = test_user.id
