Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homepage#home" 

  # # GET THE USER THE LOGIN FORM
  # get "/login", to: "users#login", as: "login"
  # # HANDLE THE LOGIN FORM SUBMISSION
  # post "/send_the_form_here", to: "users#handle_login"
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  post "sessions", to: "sessions#create", as: "sessions"

################################## USERS ###############################
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

################################## SIGNUPS ###############################
  get "/signups", to: "signups#index", as: "signups"
  get "/signups/new", to: "signups#new", as: "new_signup"
  post "/signups", to: "signups#create"

################################## PLACES ###############################
  get "/places", to: "places#index", as: "places"
  get "/places/new", to: "places#new", as: "new_place"
  post "/places", to: "places#create"
  get "/places/:id", to: "places#show", as: "place"

################################## FAVORITES ###############################
  get "/favorites", to: "favorites#index", as: "favorites"

################################## CATEGORIES ###############################
  get "/categories", to: "categories#index", as: "categories"
  # get "/categories/new", to: "categories#new", as: "new_category"
  # post "/categories", to: "categories#create"
  # get "/categories/:id", to: "categories#show", as: "category"
  
end
