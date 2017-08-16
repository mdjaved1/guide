Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  
  resources :users, only: [] do
    resources :profiles, only: [:new, :create]
    get 'profile', to: 'profiles#show'
  end
  
  root to: 'home#index'
end
