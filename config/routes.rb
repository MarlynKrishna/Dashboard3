Rails.application.routes.draw do
  get 'products/index'
  get 'products/new'
  get 'products/create'
  get 'products/update'
  get 'products/edit'
  get 'products/show'
  get 'customers/index'
  get 'customers/show'
  get 'customers/new'
  get 'index/show'
  get 'index/new'
  # get 'sample/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'user/create'
  get 'user/new'
  get 'user/index'
  get '/signup' => 'user#new'
  post '/users' => 'user#create'
  #Sget 'sample/index'
  
  get '/' => 'user#index'
  get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/sample', to: 'sample#index'
  resources :customers
  resources :products 
  # get "/products", to: "products#index"
  get "/product", to: "products#index"
  get "/customer", to: "customers#index"
  get "/show", to: "customers#show"
  get "/create", to: "products#create"
  # get "/show", to: "products#show"
end
