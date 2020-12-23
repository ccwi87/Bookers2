Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#show'

  resources :users, only: [:show, :edit, :update, :index, :create]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
end
