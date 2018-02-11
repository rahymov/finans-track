Rails.application.routes.draw do
  

  root 'welcome#index'

  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: "users#my_friends"
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, only: [:create, :destroy]
end
