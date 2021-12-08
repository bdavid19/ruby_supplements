Rails.application.routes.draw do
  get 'users/new'
  post 'users/create'
  get 'users/edit'
  put 'users/update'
  get 'users/show'
  get 'users/forgotten'
  resources :foodsupplements
  get 'say/hello'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
