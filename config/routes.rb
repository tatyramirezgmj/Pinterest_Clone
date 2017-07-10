Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :pins do
    member do
    put 'like', to: 'pins#upvote'
    # get 'like' => 'pins#index'
    end
  end
  root 'pins#index'
end
