Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homepage#home" 

################################## USERS ###############################
  get "/users", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"

################################## SIGNUPS ###############################
  get "/signups", to: "signups#index", as: "signups"

################################## PLACES ###############################
  get "/places", to: "places#index", as: "places"

################################## FAVORITES ###############################
  get "/favorites", to: "favorites#index", as: "favorites"

################################## CATEGORIES ###############################
  get "/categories", to: "categories#index", as: "categories"
  
end
