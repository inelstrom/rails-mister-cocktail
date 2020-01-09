Rails.application.routes.draw do
  get 'doses/edit'
  get 'doses/update'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses do
      resources :ingredients
    end
  end
end
