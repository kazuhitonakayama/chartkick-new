Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'
  root "posts#index"
  resources :tags , only: [:new,:create]
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
