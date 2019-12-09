Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "items#index"
  resources :mypages, only: :index

  # 仮置き
  get 'items/show', to: 'items#show'
end
