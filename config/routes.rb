Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:create, :show, :new, :destroy] do
    resources :doses, only: [:new, :create, :edit, :update]
  end
  resources :doses, only: [:destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
