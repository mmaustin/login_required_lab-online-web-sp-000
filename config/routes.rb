Rails.application.routes.draw do
  
    resources :sessions, only: [:new, :create]
    get '/show', to: 'secrets#show'
    post '/logout', to: 'sessions#destroy'
    root 'sessions#new'

end
