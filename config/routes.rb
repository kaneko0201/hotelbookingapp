Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'users/account', to: 'users#account'
  get 'users/profile', to: 'users#profile'
  root 'users#top'
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
