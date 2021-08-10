Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get "/tasks/new", to: "tasks#new", as: :create_task
  # See all tasks
  get "/tasks", to: "tasks#index", as: :tasks
  # See details about one post
  get "/tasks/:id", to: "tasks#show", as: :task
  # Create a post
  post "/tasks", to: "tasks#create"
  # Update a post
  get "/tasks/:id/edit", to: "tasks#edit", as: :update_task
  patch "/tasks/:id", to: "tasks#update"
  # Destroy a post
  delete "/tasks/:id", to: "tasks#destroy", as: :delete_task
end
