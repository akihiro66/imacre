Rails.application.routes.draw do
  root "static_pages#home"
  get :about, to: "static_pages#about"
  get :use_of_terms, to: "static_pages#terms"

  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :users, only: [:show, :index]
end
