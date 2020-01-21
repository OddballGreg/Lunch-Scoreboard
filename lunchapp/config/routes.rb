Rails.application.routes.draw do
  root 'lunches#index'
  resources :lunches
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
