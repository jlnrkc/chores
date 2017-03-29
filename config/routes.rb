Rails.application.routes.draw do
  root :to => "chores#index"

  resources :chores do
    resources :to_dos
  end
end
