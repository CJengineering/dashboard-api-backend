Rails.application.routes.draw do
  resources :instagram_media
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "instagram_media#index"
end
