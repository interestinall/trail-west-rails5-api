Rails.application.routes.draw do
  
  devise_for :user, only: []

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
  end

  namespace :v1, defaults: { format: :json } do 
    resources :games
  end
end