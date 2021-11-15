Rails.application.routes.draw do
  root to: "pizza#index"
  get "pizza/new", to: "pizza#new"
  post "pizza/new", to: "pizza#create"
  get "pizza/delete/:id", to: "pizza#destroy"
  get "pizza/edit/:id", to: "pizza#edit"
  post "pizza/edit/:id", to: "pizza#update"
end
