Rails.application.routes.draw do
  root 'jobs#index'
  devise_for :users

  resources :jobs

  namespace :admin do
    resources :jobs
  end

end
