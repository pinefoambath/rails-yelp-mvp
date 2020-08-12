Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
      resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

end


  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  # POST 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
