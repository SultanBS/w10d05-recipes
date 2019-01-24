class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]
  def index 
    if params[:ingredient_id]
      @recipes = Ingredient.find(params[:ingredient_id]).recipes
    else 
      @recipes = Recipe.all 
    end 
    render json: @recipes
  end 

  def show 
    render json: @recipe
  end 

  def create 
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end 

  def update 
    @recipe.update_attributes(recipe_params)
    render json: @recipe
  end 

  def destroy 
    @recipe.destroy 
    render json: {message: "success"}
  end

  private 
  def recipe_params 
    params.require(:recipe).permit(:name, :description)
  end 
  def set_recipe 
    @recipe = Recipe.find(params[:id])
  end
end
