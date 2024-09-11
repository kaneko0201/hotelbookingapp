Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'users/account', to: 'users#account'
  get 'users/profile', to: 'users#profile'
  get '/rooms/new', to: 'rooms#new'
  root 'users#top'
  resources :users
  resources :rooms do
    member do
      get 'search'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
