Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: "pages#home"
  root to: "lists#index"
  # resources :lists, only: [:index, :show, :new, :create, :edit, :update]

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end


  resources :bookmarks, only: [:destroy]

  # get 'lists/:list_id/bookmark/new', to: 'bookmark#new', as: 'new_ bookmark'
  # post 'lists/:list_id/bookmark', to: 'bookmark#create', as: 'bookmark'
end
