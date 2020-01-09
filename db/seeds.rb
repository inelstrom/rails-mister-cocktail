# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

Ingredient.destroy_all
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
scraped_ingredients = open(url).read
e_ingredients = JSON.parse(scraped_ingredients)
e_ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

# Cocktail.create(name: 'Strawberry Cocoa', ingredients: ["Milk", "Sugar", "Chocolate", "Strawberries"], doses: ["300 ml", "A spoonful", "Two rows", "3"])
