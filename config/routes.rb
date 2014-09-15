Rails.application.routes.draw do
  resources :charges

  resources :pricetags
  devise_for :users
  root 'application#index'
end
