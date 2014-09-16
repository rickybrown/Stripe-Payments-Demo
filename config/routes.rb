Rails.application.routes.draw do
  get 'register', to: 'application#register'
  resources :charges
  resources :pricetags
  devise_for :users
  root 'application#index'
end
