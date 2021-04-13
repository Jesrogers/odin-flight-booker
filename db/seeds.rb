# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create([{ name: 'San Francisco', code: 'SFO' }, { name: 'New York City', code: 'NYC' }])

Flight.create({ from_airport_id: Airport.first.id, to_airport_id: Airport.last.id, start: DateTime.new(2021, 4, 25, 12), duration: 300 })
Flight.create({ from_airport_id: Airport.first.id, to_airport_id: Airport.last.id, start: DateTime.new(2021, 4, 28, 17), duration: 300 })
Flight.create({ from_airport_id: Airport.first.id, to_airport_id: Airport.last.id, start: DateTime.new(2021, 4, 13, 05), duration: 300 })

Flight.create({ from_airport_id: Airport.last.id, to_airport_id: Airport.first.id, start: DateTime.new(2021, 4, 15, 7), duration: 320 })
Flight.create({ from_airport_id: Airport.last.id, to_airport_id: Airport.first.id, start: DateTime.new(2021, 4, 07, 18), duration: 320 })
Flight.create({ from_airport_id: Airport.last.id, to_airport_id: Airport.first.id, start: DateTime.new(2021, 4, 30, 22), duration: 320 })