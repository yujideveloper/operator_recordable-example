Rails.application.routes.draw do
  root to: redirect("/posts")
  resources :posts, except: :show
  resources :operators, except: :show
end
