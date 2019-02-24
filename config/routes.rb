Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Read all Cocktails
  get '/restaurants' => 'restaurants#index'
  # Create one Cocktail
  get '/restaurants/new' => 'restaurants#new'
  post '/restaurants' => 'restaurants#create'
  # Read one Cocktail
  get '/restaurants/:id' => 'restaurants#show'

  resources :reviews, only: [:new, :create]
end
