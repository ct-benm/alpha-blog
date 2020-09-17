Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :artikulos, only: [:show, :index]
end
