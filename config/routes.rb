Rails.application.routes.draw do
  resources :users, only: %i[new create show]
  root 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'users#welcome'
end
