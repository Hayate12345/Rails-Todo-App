Rails.application.routes.draw do
  get "/", to: "todos#index"
  get "/new", to: "todos#new"
  post "/create", to: "todos#create"
  delete "/delete/:id", to: "todos#delete"
end
