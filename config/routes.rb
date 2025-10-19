Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "homes/top" => "homes#top", as: "homes_top"
  get "home/about" => "homes#about", as: "homes_about"

  resources :users, only: [:show, :edit, :update, :index]
  resources :books
end
