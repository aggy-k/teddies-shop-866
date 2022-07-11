Rails.application.routes.draw do
  root 'teddies#index'
  resources :teddies, only: [:index, :show]
  resources :orders, only: [:create, :index] do
    resource :payment, only: [:show]
  end

  post 'wx-notify', to: 'payments#wx_notify'
end
