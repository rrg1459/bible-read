Rails.application.routes.draw do

  get 'bible/read'
  get "select" => "bible#select", as: :rails_health_check

  # Defines the root path route ("/")
  root "bible#read"
end
