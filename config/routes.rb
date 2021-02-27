Rails.application.routes.draw do
  devise_for :users
  get 'dashboard/index'
  root to: "dashboard#index"
  resources :users, only: [:edit, :update, :show]
  resources :teams, only: [:new, :create, :edit, :update]
end
