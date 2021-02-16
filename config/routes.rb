Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #CRUD

  #C
  get "tasks/new", to: "tasks#new"

  post "tasks", to: "tasks#create", as: :tasks_create

  #R List all tasks
  get "tasks", to: "tasks#index"

  get "tasks/:id", to: "tasks#show", as: :task

  #U
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update", as: :update


  #D
  delete "tasks/:id",  to: "tasks#destroy", as: :destroy

end
