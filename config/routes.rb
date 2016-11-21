Rails.application.routes.draw do
  root 'blog_posts#index'

  devise_for :users
  resources :comments
  resources :blog_posts

  get 'profile/user_page'

  get 'your_posts' => 'blog_posts#your_posts'

  get 'my_posts' => 'blog_posts#my_posts'

  get 'user_posts' => 'blog_posts#user_posts' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
