Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :additives, only: [:index, :show]
  resources :allergens, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
end
