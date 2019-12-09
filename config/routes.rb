Rails.application.routes.draw do
  get 'orders/check'
  get 'orders/thanks'
  get 'products/top'
  # devise_for :users

namespace :admin do
  get '/', :to => 'admin#top'
end

  devise_for :admin_users, path: :admin, controllers: {
    sessions: 'admin/admin_users/sessions',
    passwords: 'admin/admin_users/passwords',
    registrations: 'admin/admin_users/registrations'
  }

devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}



resources :users
resources :products
resources :carts
resources :orders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
