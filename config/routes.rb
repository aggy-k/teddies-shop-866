Rails.application.routes.draw do
  root 'teddies#index'
  resources :teddies, only: [:index, :show]
end
