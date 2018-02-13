Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'superheroes', to: 'superheroes#index'
  # get 'superheroes/:id', to: 'superheroes#show'
  # post 'superheroes', to: 'superheroes#create'
  # patch 'superheroes/:id', to: 'superheroes#update'
  # put 'superheroes/:id', to: 'superheroes#update'
  # delete 'superheroes?:id', to: 'superheroes#destroy'

  #Can all be created with:
  #resources :superheroes, only: [:index, :show, :create, :update, :destroy]

  get 'silly', to: 'silly#fun'
  post 'silly', to: 'silly#time'
  post 'silly/:id', to: 'silly#super'

  #:id is wildcard

  resources :superheroes do
    resources :abilities, only: [:index]
  end

  resources :abilties, only: [:show, :update, :create, :destroy]
end
