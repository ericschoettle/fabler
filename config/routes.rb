Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#home'

  resources :users do
    resources :entries
  end

  resources :stories do
    resources :entries
  end

end
