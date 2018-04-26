Rails.application.routes.draw do
  root 'static_pages#home', as: 'root'
  get '/new', to: 'users#new', as: 'new_user'
  post '/new', to: 'users#create', as: 'create'
  get '/users/:username', to:'users#show', as: 'profil'
  get '/users/erreur', to: 'users#erreur', as: 'erreur'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
