Rails.application.routes.draw do
  devise_for :users
  resources :users ,only: [:show, :edit, :update]
  root "top#index"
  resources :groups, only: [:show, :edit, :update]
  resources :questions,only: [:create, :show]
  resources :answers, only: [:new, :create, :edit, :update]
end
