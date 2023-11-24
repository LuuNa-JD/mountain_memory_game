Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "cards#index"
  resources :cards, only: [:index] do
    post :check_match, on: :collection
  end
end
