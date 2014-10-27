Rails.application.routes.draw do

  root to: 'dashboard#show'

  resources :sessions, only: [:new, :create]

  get '/login', to: 'sessions#new'

end
