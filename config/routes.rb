Rails.application.routes.draw do
  get 'demo/index'

  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
