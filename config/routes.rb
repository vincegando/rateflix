Rails.application.routes.draw do
  resources :reviews

  resources :movies do
    resources :reviews
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get '/about' => 'about#index'
end
