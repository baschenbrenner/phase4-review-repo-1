Rails.application.routes.draw do

  resources :reviews, except: [:show]

  resources :users, only: [:index, :show, :create]

  resources :products, only: [:index, :show, :create] do 
    resources :reviews, only: [:index]
  end 

  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy" 

  get "affordable", to: "products#affordable"

  get "/priceRange/:price/:price2", to: "products#priceRange"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
