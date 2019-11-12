Rails.application.routes.draw do


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:create]
  resources :registations, only: [:create]
  root to: "static#home"
end
