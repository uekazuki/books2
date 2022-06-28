Rails.application.routes.draw do
  get "/home/about" => "homes#about", as: "about"
  root to: 'homes#top'
  devise_for :users
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
