Rails.application.routes.draw do
  get 'pages/info'

  root :to => redirect('/ideas')
  get    '/ideas'           => 'ideas#index'
get '/ideas/info'           =>'pages#info'
  get    '/ideas/new'       => 'ideas#new', as: 'new_idea'
  get    '/ideas/:id/edit'  => 'ideas#edit', as: 'edit_idea'
  get    '/ideas/:id'       => 'ideas#show', as: 'idea'

  post   '/ideas'           => 'ideas#create'
  patch  '/ideas/:id'       => 'ideas#update'
  put    '/ideas/:id'       => 'ideas#update'

  delete '/ideas/:id'       => 'ideas#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
