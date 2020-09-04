Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/users", to: "users#index", as: "users"

  get "/signups", to: "signups#index", as: "signups"

  get "/places", to: "places#index", as: "places"

  get "/favorites", to: "favorites#index", as: "favorites"

  get "/categories", to: "categories#index", as: "categories"
end
