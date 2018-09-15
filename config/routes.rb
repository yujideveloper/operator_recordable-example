Rails.application.routes.draw do
  root to: 'dashboard#index'
  resources :posts, except: :show
  resources :operators, except: :show
end
