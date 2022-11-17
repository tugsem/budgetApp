Rails.application.routes.draw do
  devise_for :users do
   get '/users/sign_out', to: 'devise/sessions#destroy', as: 'destroy_user_session_path'
  end
  get '/user/:user_id', to: 'users#show', as: 'user'

  resources :groups
  resources :entities

  post '/entities/new', to: 'entities#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "groups#index"

end
