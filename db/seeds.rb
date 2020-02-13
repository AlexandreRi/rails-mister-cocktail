# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dose.destroy_all

Ingredient.destroy_all
Cocktail.destroy_all

i1 = Ingredient.create(name: "Light rum")
i2 = Ingredient.create(name: "Dark rum")
i3 = Ingredient.create(name: "Egg")


c1 = Cocktail.create(name: "Applejack")
c2 = Cocktail.create(name: "Sweet Vermouth")
c3 = Cocktail.create(name: "Apricot Brandy")

Dose.create(cocktail: c1, ingredient: i1, description: "1 cl")
Dose.create(cocktail: c2, ingredient: i2, description: "2 cl")
Dose.create(cocktail: c3, ingredient: i3, description: "2 cl")
