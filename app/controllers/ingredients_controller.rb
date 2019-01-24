class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :update, :destroy]

  def index 
    if params[:recipe_id]
      @ingredients = Recipe.find(params[:recipe_id]).ingredients 
    else 
      @ingredients = Ingredient.all
    end
    render json: @ingredients
  end 

  def show 
    render json: @ingredient
  end 

  def create 
    @ingredient = Ingredient.create(ingredient_params)
    render json: @ingredient
  end 

  def update 
    @ingredient.update_attributes(ingredient_params)
    render json: @ingredient
  end 

  def destroy 
    @ingredient.destroy 
    render json: { message: "success" }
  end

  private 

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end 

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

end
