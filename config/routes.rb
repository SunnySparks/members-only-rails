Rails.application.routes.draw do
  devise_for :posts, only: [:new, :create, :index]
  resources :posts, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/index'
  root to: "home#index"
end
