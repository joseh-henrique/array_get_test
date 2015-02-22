Rails.application.routes.draw do
  resources :customers, only: [:index, :new]

  root 'customers#index'
end
