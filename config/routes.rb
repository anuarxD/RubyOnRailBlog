Rails.application.routes.draw do

  devise_for :autors
  get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  scope module: 'autors' do
    resources :posts do
      resources :elementos
    end
  end
end
