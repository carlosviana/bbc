Rails.application.routes.draw do

  resources :clients
  get 'clients/:id/enabled' => 'clients#enabled', :as => :client_enabled

  devise_for :users


  as :user do
    get 'users' => 'users#index'
    get 'users/new' => 'users#new'
    post 'users' => 'users#create'
  end

  get 'users/:id/enabled' => 'users#enabled', :as => :user_enabled

  get 'users/:id', :to => 'users#show', :as => :user
  get 'users/:id/edit' => 'users#edit', :as => :edit_user
  
  put 'users/:id' => 'users#update'
  patch 'users/:id' => 'users#update'


  get 'users/:id/edit_password' => 'users#edit_password', :as => :edit_password_user
  
  put 'users/:id/update_password' => 'users#update_password'
  patch 'users/:id/update_password' => 'users#update_password'

  root 'home#index'
  
end
