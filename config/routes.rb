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
 
 get 'auth/:provider/callback', to: 'sessions#create'
 match 'sign_out', to: 'sessions#destroy', via: :delete
 
 post 'create_friendships' => 'friendships#create'
 delete 'destroy_friendships' => 'friendships#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
