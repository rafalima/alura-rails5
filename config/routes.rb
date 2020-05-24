Rails.application.routes.draw do
  root to: "produtos#index"

  resources :produtos, only: [:new, :create, :destroy]
end
