Rails.application.routes.draw do
  resources :microposts
  resources :micropost2s
  resources :users
  root 'users#index'
end
