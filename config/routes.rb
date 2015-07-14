Rails.application.routes.draw do
  root 'home#index'

  resources :artists do
    resources :songs
  end
  
  resources :songs

end
