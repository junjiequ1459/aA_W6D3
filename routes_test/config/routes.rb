Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  # get "users", to: "users#index", as: "user"
  # post "users", to: "users#create", as: "user"
  # get "new_user", to: "users#new", as: "user"
  # get "edit_user", to: "users#edit", as: "user"
  # get "user/:id", to: "users#show", as: "user"
  # patch "user", to: "users#update", as: "user"
  # put "user", to: "users#update", as: "user"
  # delete "user", to: "users#destroy", as: "user"
end
