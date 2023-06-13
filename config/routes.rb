require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :home, only: [:index] do
    post :start_task, on: :collection
  end

  mount Sidekiq::Web => '/sidekiq'
end
