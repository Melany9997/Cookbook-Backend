Rails.application.routes.draw do

  resources :categories, except: [:edit, :update]
  resources :bookmarks, only: [:delete]

  #get "categories" to: "categories#index"





end
