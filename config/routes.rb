Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :orders
  resources :line_items do
    post 'decrement', on: :member
  end
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
end
