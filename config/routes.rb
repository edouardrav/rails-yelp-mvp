Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #resources :restaurants, only: [:index, :show, :new, :create]
  # get "restaurants", to: "restaurants#index", as: :restaurants

  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"

  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # post "restaurants/:id/reviews", to: "reviews#create", as: :restaurant_reviews

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end

end
