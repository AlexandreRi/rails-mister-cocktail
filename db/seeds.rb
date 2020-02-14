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
i3 = Ingredient.create(name: "Whiskey")
i4 = Ingredient.create(name: "Vodka")
i5 = Ingredient.create(name: "Red Vodka")
i6 = Ingredient.create(name: "Tequila")
i7 = Ingredient.create(name: "Yellow Tequila")

c1 = Cocktail.create(name: "Applejack")
c2 = Cocktail.create(name: "Sweet Vermouth")
c3 = Cocktail.create(name: "Apricot Brandy")
c4 = Cocktail.create(name: "Green Velvet")
c5 = Cocktail.create(name: "Mcgregor Whiskey")
c6 = Cocktail.create(name: "Peer Whiskey")
c7 = Cocktail.create(name: "Apple Vodka")

Dose.create(cocktail: c1, ingredient: i1, description: "1 cl")
Dose.create(cocktail: c2, ingredient: i2, description: "2 cl")
Dose.create(cocktail: c3, ingredient: i3, description: "2 cl")
Dose.create(cocktail: c4, ingredient: i4, description: "2 cl")
Dose.create(cocktail: c5, ingredient: i5, description: "2 cl")
Dose.create(cocktail: c6, ingredient: i6, description: "2 cl")
Dose.create(cocktail: c7, ingredient: i7, description: "2 cl")
