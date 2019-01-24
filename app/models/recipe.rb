class Recipe < ApplicationRecord
  has_many :ingredient_recipes, dependent: :delete_all
  has_many :ingredients, through: :ingredient_recipes
end
