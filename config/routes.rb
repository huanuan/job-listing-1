Rails.application.routes.draw do
  root 'jobs#index'
  devise_for :users

  resources :jobs do
    resources :resumes
  end

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
    end
  end

end
