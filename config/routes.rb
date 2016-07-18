Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :products do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]

end
