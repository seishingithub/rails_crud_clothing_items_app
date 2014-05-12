Rails.application.routes.draw do
  root 'clothing_items#index'

  get '/clothing_items', to: 'clothing_items#index'

  get '/clothing_items/new', to: 'clothing_items#new'

  post '/clothing_items', to: 'clothing_items#create'

  get '/clothing_items/:id', to: 'clothing_items#show'

  get '/clothing_items/:id/edit', to: 'clothing_items#edit'

  put '/clothing_items/:id', to: 'clothing_items#update'

  delete '/clothing_items/:id', to: 'clothing_items#destroy'

end
