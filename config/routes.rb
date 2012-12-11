Veggie::Application.routes.draw do
  
  
  resources :meals

  resources :common_allergens
  resources :dishes

  get "home/index"
  

  root :to => 'home#index'


end
