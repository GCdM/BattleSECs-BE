# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
  { username: "GabeTheBabe", password: "fuckumani" },
  { username: "ManiTheFanny", password: "fuckugabe" },
])

Game.create(player1: User.all.first, player2: User.all.second)

Turn.create([
  { game: Game.first, p1_x: 0, p1_y: 0, p2_x: 4, p2_y: 4 },
  { game: Game.first, p1_x: 1, p1_y: 1, p2_x: 3, p2_y: 3 },
  { game: Game.first, p1_x: 2, p1_y: 2, p2_x: 2, p2_y: 2 },
])


puts "\n - - - - - Database Seeded - - - - - \n\n"