Rails.application.routes.draw do
  root to: "blogs#index"
  resources :blogs
  resources :categories

  resources :posts do
  resources :comments
  end
resources :tags
  devise_for :users
devise_scope :user do
  get 'login', to: 'devise/sessions#new'
end
	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
