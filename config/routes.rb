Rails.application.routes.draw do
  get 'home' => 'welcome#home'
    
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#home'
end
