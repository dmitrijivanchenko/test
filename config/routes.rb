Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :companies
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  root 'static_pages#home'
  match '/home', to: 'static_pages#home', via: 'get'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
