Rails.application.routes.draw do
  root "tasks#new"

  resources :tasks do
    resources :subtasks
  end
end
