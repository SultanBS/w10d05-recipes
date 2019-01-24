class Ingredient < ApplicationRecord
  has_many :ingredient_recipes, dependent: :delete_all
  has_many :recipes, through: :ingredient_recipes
end
