Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  root "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resource :user do

  end
  # Defines the root path route ("/")
  # root "articles#index"
end
