# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

villian1 = Villian.create(name: "Joker", nickname: "Penguin", power: 3)
villian2 = Villian.create(name: "Lex Luther", nickname: "Lex", power: 4)

super1 = Superheroe.create(name: "Batman", nickname: "Dark Knight", power: 3, villian_id: villian1.id)
super2 = Superheroe.create(name: "SuperMan", nickname: "Clark Kent", power: 9, villian_id: villian2.id)
