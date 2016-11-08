Rails.application.routes.draw do
  
  root 'pages#index'
  
  # get 'pages/profile' => 'pages#profile'

  # get 'pages/index' => 'pages#index'

  # get 'pages/home' => 'pages#home'

  # get 'pages/explore' => 'pages#explore'

  get 'profile' => 'pages#profile'

  get 'index' => 'pages#index'

  get 'home' => 'pages#home'

  get 'explore' => 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
