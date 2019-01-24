class IngredientRecipesController < ApplicationController
  def create 
    @ingredient_recipe = IngredientRecipe.create(ingredient_recipe_params)
    render json: @ingredient_recipe
  end 
  def destroy 
    @ingredient_recipe = IngredientRecipe.find_by(ingredient_recipe_params)
    @ingredient_recipe.destroy
    render json: {message: "success"}
  end 

  private 
  def ingredient_recipe_params
    {
      ingredient_id: params.require(:ingredient_id),
      recipe_id: params.require(:recipe_id)
    }
  end
end
