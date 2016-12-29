Rails.application.routes.draw do
  get 'persons/profile'

  devise_for :users
    
  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
  
