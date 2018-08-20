Rails.application.routes.draw do
  resources :rooms, except: [:show]
  get '/', to: "rooms#index"
  get '/rooms', to: "rooms#index"
end