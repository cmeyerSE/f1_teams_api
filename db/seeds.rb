# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.destroy_all
Driver.destroy_all


fastcars = Team.create(name: "Fast Cars")
bestdrivers = Team.create(name: "Best Drivers")

danny = Driver.create(name: "Danny Speed", description: "One of the fastest drivers alive", skill: "Speed Burst", team_id: fastcars.id)
will = Driver.create(name: "Willam Turner", description: "Best corner racer!", skill: "Fast Corners", team_id: bestdrivers.id)
billy = Driver.create(name: "Billy Bumper", description: "Watch out for this one", skill: "Bump and Go", team_id: bestdrivers.id)