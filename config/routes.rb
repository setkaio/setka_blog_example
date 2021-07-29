Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

  resources :posts, except: [:create, :update]

  namespace :api do
    resources :posts, only: [:show, :create, :update]
  end
end
