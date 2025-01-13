Rails.application.routes.draw do

  resources :categories, except: [:edit, :update]

  #get "categories" to: "categories#index"





end
