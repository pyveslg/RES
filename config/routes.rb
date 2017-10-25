Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :mon_french_expressos do
    resources :expressions, only: [:new, :create]
  end
end
