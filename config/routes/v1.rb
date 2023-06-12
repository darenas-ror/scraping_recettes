namespace :v1 do
  namespace :auto_complete do
    resources :recipes, only: [:index]
    resources :ingredients, only: [:index]
  end
end
