Rails.application.routes.draw do
  resources :songs, only: [:show, :create, :new, :edit, :update]
  resources :artists, only: [:show, :create, :new, :edit, :update]
  resources :genres, only: [:show, :create, :new, :edit, :update]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
