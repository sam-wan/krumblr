Rails.application.routes.draw do
  devise_for :users

  root "dashboard#index"


  resources :blogs, except: [:index] do
    post "select"
    resources :posts
  end
end
