Rails.application.routes.draw do
 #get 'sessions/new'
 #get 'sessions/create'
 #get 'sessions/destroy'
 #get 'users/create'
 #get 'users/new'
  #get 'toppages/index'
    #root to: 'toppages#index'
    root to: 'tasks#index'
    
    get 'signup', to: 'users#new'
    get 'user', to: 'tasks#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    resources :tasks
    resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
