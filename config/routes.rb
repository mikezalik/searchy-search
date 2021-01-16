Rails.application.routes.draw do
  devise_for :users
  root 'search_items#index'
  resources :search_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
