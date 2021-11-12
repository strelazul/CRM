Rails.application.routes.draw do
  root "customers#index"

  resources :customers do
    collection do
      get "missing_email"
    end

    collection do
      get "alphabetized"
    end
  end

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
