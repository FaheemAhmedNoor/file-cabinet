Rails.application.routes.draw do
  root 'welcomes#index'
  resources :documents
end
