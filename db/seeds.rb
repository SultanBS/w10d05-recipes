# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
salad = Recipe.create({name: "Some salad", description: "my food's food"})
chicken_burger = Recipe.create({name: "Chicken Burger", description: "yum"})
chicken_salad_sandwich = Recipe.create({name: "Chicken Salad Sandwich", description: "50% good"})
buttered_bread = Recipe.create({name: "Buttered Bread", description: "a classic"})
cheese_fries = Recipe.create({name: "Cheese Fries", description: "like regular fries but cheesier"})
spinach_soup = Recipe.create({name: "Spinach Soup", description: "healthy? not healthy? nobody knows"})
bread_sandwich = Recipe.create({name: "Bread Sandwich", description: "like low-carb but opposite"})
diet_strawberries_n_cream = Recipe.create({name: "Diet Strawberries n Cream", description: "low fat version of a classic desert"})
milk_n_potatoes = Recipe.create({name: "Milk n' Potatoes", description: "in case you run out of actual cereal"})
steak = Recipe.create({name: "steak", description: "meat is goooood"})
chix_n_fries = Recipe.create({name: "Chicken and Fries", description: "uninventivally delicious"})
strawberry_butter_beef = Recipe.create({name: "Strawberry Butter Beef", description: "sweet and savory"})


cheese = Ingredient.create({name: "cheese"})
spinach = Ingredient.create({name: "spinach"})
strawberries = Ingredient.create({name: "strawberries"})
chicken = Ingredient.create({name: "chicken"})
bun = Ingredient.create({name: "bun"})
butter = Ingredient.create({name: "butter"})
milk = Ingredient.create({name: "milk"})
beef = Ingredient.create({name: "beef"})
bread = Ingredient.create({name: "bread"})
seasoning = Ingredient.create({name: "seasoning"})
salt = Ingredient.create({name: "salt"})
potato = Ingredient.create({name: "potato"})
carrot = Ingredient.create({name: "carrot"})



salad.ingredients += [cheese, spinach, strawberries, chicken]
chicken_burger.ingredients += [cheese, chicken, bun]
chicken_salad_sandwich.ingredients += [chicken, bread, spinach]
buttered_bread.ingredients += [bread, butter, salt]
cheese_fries.ingredients += [potato, cheese, salt]
spinach_soup.ingredients += [spinach, milk, seasoning, butter, cheese]
bread_sandwich.ingredients += [bun, bread, salt]
diet_strawberries_n_cream.ingredients += [strawberries, milk]
milk_n_potatoes.ingredients += [milk, potato]
steak.ingredients += [beef, salt, seasoning]
chix_n_fries.ingredients += [chicken, potato, seasoning, salt]
strawberry_butter_beef.ingredients += [beef, strawberries, butter]