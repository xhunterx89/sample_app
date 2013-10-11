SampleApp::Application.routes.draw do
<<<<<<< HEAD
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'static_pages#home'
=======
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root  'static_pages#home'
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
<<<<<<< HEAD
=======
  
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
end
