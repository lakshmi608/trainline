Rails.application.routes.draw do
  resources :segments, only: [:index]
end
