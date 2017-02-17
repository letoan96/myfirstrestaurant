Rails.application.routes.draw do
resources :food_items do
  resources :orders
  end
  get 'contact_us' => 'home#contact_us'
  get 'menu' => 'home#menu'
  get 'get_food_item' => 'home#get_food_item'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
