Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/", to: "index#index"

  get "/signup", to: "user#new", as: "signup"
  post "/users", to: "user#create", as: "users"

  resources :users
end
