# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Hero.create(name: "Batman", super_name: "Ms. Marvel" )
Hero.create(name: "Superman", super_name: "Squirrel Girl")
Hero.create(name: "Spiderman", super_name: "Spider-Gwen" )


Power.create(name: "Strength", description: "Gives the hero superhuman strength")
Power.create(name: "Flight", description: "Allows the hero to fly")
Power.create(name: "Web-slinging", description: "Allows the hero to swing from buildings using webs")


