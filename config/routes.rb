Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about', to: 'homes#about', as: 'homes_about'
  root to: 'homes#top'
  devise_for :users
  resources :users,only: [:show, :edit, :update, :index]
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
