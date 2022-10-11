Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :posts, only: [:new, :create, :index]
  

  end
