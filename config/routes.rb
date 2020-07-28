Rails.application.routes.draw do
  resources :botstrap4heros
  root "botstrap4heros#index"
end
