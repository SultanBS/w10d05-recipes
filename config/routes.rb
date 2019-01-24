Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes do 
    get "/ingredients", to: "ingredients#index"
  end 

  resources :ingredients do 
    get "/recipes", to: "recipes#index"
  end 

  post "/ingredient_recipes", to: "ingredient_recipes#create"
  delete "/ingredient_recipes", to: "ingredient_recipes#destroy"
end
