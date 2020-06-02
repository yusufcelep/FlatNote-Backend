Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :index]
  resources :notes
  resources :tags
  resources :note_tags
  
  get '/users/:username', to: 'users#show'

end
