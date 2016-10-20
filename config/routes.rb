Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    root "subjects#index"
    resources :subjects
    resources :users
  end

  root "static_pages#home"
  get "help" => "static_pages#help"
  get "about" => "static_pages#about"
  get "contact" => "static_pages#contact"
  get "contribute" => "static_pages#contribute"
  get "signup" => "users#new"
end
