Rails.application.routes.draw do
  devise_for :users
  
  get 'home/index'
  
  resources :restaurants do 
    get '/restaurants/:id', to: 'restaurants#show', as: 'show_restaurant'
    get '/restaurants', to: 'restaurants#index', as: 'index_restaurant'
    get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
    post '/restaurants', to: 'restaurants#create', as: 'create_restaurant'
    patch '/restaurants/:id', to: 'restaurants#update', as: 'update_restaurant'
    delete '/restaurants/:id', to: 'restaurants#destroy', as: 'destroy_restaurant'
  end
  
  resources :items do
    get '/items/:id', to: 'items#show', as: 'show_item'
    get '/items', to: 'items#index', as: 'index_item'
    get '/items/new', to: 'items#new', as: 'new_item'
    post '/items', to: 'items#create', as: 'create_item'
    patch '/items/:id', to: 'items#update', as: 'update_item'
    delete '/items/:id', to: 'items#destroy', as: 'destroy_item'
  end
  
  resources :dishes do
    get '/dishes/:id', to: 'dishes#show', as: 'show_dish'
    get '/dishes', to: 'dishes#index', as: 'index_dish'
    get '/dishes/new', to: 'dishes#new', as: 'new_dish'
    post '/dishes', to: 'dishes#create', as: 'create_dish'
    patch '/dishes/:id', to: 'dishes#update', as: 'update_dish'
    delete '/dishes/:id', to: 'dishes#destroy', as: 'destroy_dish'
  end

  resources :restaurants do
    resources :items
  end
  
  resources :items
  root 'home#index'

  get '/categories', to: 'home#categories', as: 'categories'
  post '/restaurants/search', to: 'restaurants#search'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }
  




end
