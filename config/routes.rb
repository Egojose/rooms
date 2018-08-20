Rails.application.routes.draw do
  resources :rooms, except: [:show]
  get '/rooms', to: "rooms#index"
end