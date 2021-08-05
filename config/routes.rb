Rails.application.routes.draw do
  root to: 'foods#index'
  resources :order_items
  resources :carts
  resources :foods
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
