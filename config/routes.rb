TraysApp::Application.routes.draw do
  
  get "sessions/create"

  get "sessions/destroy"

  resources :porcelains

  resources :trays

  root to: "pages#home"
  
end
