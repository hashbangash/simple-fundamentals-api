# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comments
  resources :likes
  resources :cards
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :cards, except: %i[new edit]
  resources :likes, except: %i[new edit]
  resources :comments, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
