Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
  get '/', to: 'users#welcome'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new'
end
