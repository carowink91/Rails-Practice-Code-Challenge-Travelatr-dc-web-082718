Rails.application.routes.draw do
  get 'destinations/show'

  get 'destinations/index'

  get 'bloggers/index'

  get 'bloggers/new'

  get 'bloggers/create'

  get 'bloggers/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:new, :create, :show, :index]

  resources :destinations, only: [:show, :index]

  resources :posts, except: [:delete]
end
