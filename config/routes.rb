Rails.application.routes.draw do


  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # devise_for :users
  root 'welcomes#index'
  resources :documents
end
