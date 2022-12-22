Rails.application.routes.draw do
  resources :payments,  only: [:create, :update, :destroy, :index, :show]
  resources :bookings,  only: [:create, :update, :destroy, :index, :show]
  resources :venues, only: [:create, :update, :destroy, :index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
