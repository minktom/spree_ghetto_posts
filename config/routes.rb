Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :posts
  end
  
  match '/posts', :to => 'posts#index', :via => :get, :as => 'posts'
  match '/posts/:slug', :to => 'posts#show', :via => :get, :as => 'post'
  
end
