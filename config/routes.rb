Rails.application.routes.draw do
  get 'home/index'

  resources :posts
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
