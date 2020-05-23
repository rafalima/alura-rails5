Rails.application.routes.draw do
  root to: "produtos#index"

  get "produtos", to: "produtos#index"
end
