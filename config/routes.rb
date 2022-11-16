Rails.application.routes.draw do
  devise_for :users

  resources :groups do
    resources :entities
  end

  post '/groups/:group_id/entities/new', to: 'entities#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "groups#index"
end
