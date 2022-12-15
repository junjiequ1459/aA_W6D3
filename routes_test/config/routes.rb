Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  # get "users", to: "users#index", as: "users"
  # post "users", to: "users#create"
  # get "user/new", to: "users#new", as: "new_user"
  # get "users/:id/edit", to: "users#edit", as: "edit_user"
  # get "user/:id", to: "users#show", as: "user"
  # patch "user/:id", to: "users#update"
  # put "user/:id", to: "users#update"
  # delete "user/:id", to: "users#destroy"

  resources :users, only: [:index, :create, :destroy, :show, :update]
end
