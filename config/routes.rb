Rails.application.routes.draw do
#  get 'users/index'
#
#  get 'users/edit'
#
#  get 'users/profile'
#
#  get 'users/matches'

  root 'home#index'
 
  resources :users do
   member do
    get 'profile'
    get 'matches'
   end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
