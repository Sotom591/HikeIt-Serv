Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do

      resources :users, only: [:index, :create, :show]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'


      resources :packing_lists, only: [:index, :show, :create, :update, :delete]
      resources :packing_items, only: [:index, :show, :create, :update, :delete]
      resources :hiking_lists, only: [:index, :show, :create, :update, :delete]

  #   end
  # end
end
