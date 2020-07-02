Rails.application.routes.draw do
  get 'secrets/show'
  resources :sessions, only: [:create]
  get 'destroy' => 'sessions#destroy'
  get 'login' => 'sessions#new', as: 'new_session'
  root 'application#index'
end
