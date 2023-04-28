Rails.application.routes.draw do
  devise_for :users

  get 'pages/home'
  root 'pages#home'


  resources :patients
  resources :cards
  resources :doctors
  resources :specialities
  resources :departments
  resources :hospitals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
