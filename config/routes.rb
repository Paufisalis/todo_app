Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos', to: 'todos#new'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch 'todo/:id', to:'todos#update'
  delete 'todos/:id', to: 'todos#destroy'
  get 'todos/:id/complete', to: 'todos#complete'
  get 'todos/list', to: 'todos#list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
