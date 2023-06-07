Rails.application.routes.draw do

  resources :reviews

  resources :users, only: [:index, :show, :create]

  resources :products, only: [:index, :show, :create] do 
    resources :reviews, only: [:index]
  end 

  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy" 
  get "/example/:word", to: "products#example"
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
