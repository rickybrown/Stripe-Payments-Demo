Rails.application.routes.draw do
  resources :pricetags
  devise_for :users
  root 'application#index'
end
