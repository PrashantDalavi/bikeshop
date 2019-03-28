Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users, only: [:new, :create, :edit, :update, :destroy]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'simple_pages#landing_page'
  post 'simple_pages/thank_you'
  
end
