Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/:page" => "pages#show"
  root "pages#show", page: "home"
  post "/:page" => "pages#show"	
  post "/article/create" => "article#create"
  post "/user/create" => "user#create"
  post   '/user/login',   to: 'sessions#create'
  get '/user/logout',  to: 'sessions#destroy'
  post '/comment/new', to: 'comment#new'
  get '/v0/:item/:id' => 'api#dumb_data'
  post '/v0/:item/create' => 'api#create_item'
end
