Rails.application.routes.draw do
  get "finance/index"
  get "crops/index"
  get "crops/show"
  devise_for :users

  #routes for home page
  root "home#index"

  # Define routes for crops
  resources :crops, only: [:index, :show]  # This will create index and show routes for crops


  get "finance", to: "finance#index"
end
