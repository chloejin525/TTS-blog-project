Rails.application.routes.draw do
  resources :tags
  devise_for :users  
  resources :comments
  resources :posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home' => 'welcome#home'
  # "/:" matches all routes looking like "/XXX", so it's better to put it behind.
  get '/:name' => 'posts#user_posts', as: :user_posts
  root 'welcome#home'

end
