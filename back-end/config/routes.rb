Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'recipes#index'

  resource :tests, only: [:index]

  resources :users, only: [:create, :new]

  post 'users/login' => 'users#login'

  get '/users' => 'users#show'

  patch '/users' => 'users#update'

  get '/verify_token' => 'users#verify_token'

  get '/user_settings' => 'users#settings'

  get '/friend_search' => 'friends#search'

  post '/friend_add' => 'friends#add'

  delete '/friend_remove' => 'friends#destroy'

  get 'friends' => 'friends#show'

  resources :fridges, only: [:create, :index, :destroy]

  resources :books, only: [:create, :index, :destroy]

  resources :sessions, only: [:new, :create, :destroy]

  resources :recipes, only: [:create, :new, :show, :index, :destroy]
end
