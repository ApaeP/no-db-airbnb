Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "flats#index"
  get "/flats/:id", to: 'flats#show', as: :flat
  # Defines the root path route ("/")
  # root "articles#index"
end
