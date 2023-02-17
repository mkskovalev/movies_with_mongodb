Rails.application.routes.draw do
  resources :actors
  root to: 'movies#index'
  resources :movies
end
