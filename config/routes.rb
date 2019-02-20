Rails.application.routes.draw do
  resources :uploads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'uploads#index'

  get '/uploads/download', to: 'uploads#scan'
end
