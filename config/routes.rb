Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
