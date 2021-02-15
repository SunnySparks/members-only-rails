Rails.application.routes.draw do
  devise_for :posts
  resources :posts, path: 'auth', path_names: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
