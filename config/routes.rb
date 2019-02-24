Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  # resources :students
  resources :users do
    get 'signin_user_page','signup_user_page', on: :collection
    post 'signin_user', on: :collection
  end

  resources :admins do
    get 'dashboard', on: :collection
  end

  resources :teachers do
    get 'dashboard', on: :collection
  end

  resources :students do
    get 'dashboard', on: :collection
  end

  root to: 'users#signin_user_page'
end
