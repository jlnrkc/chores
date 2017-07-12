Rails.application.routes.draw do
  devise_for :users
  root :to => "chores#index"

  resources :chores do
    resources :to_dos
  end
end
