Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles
  # REST - Representational state transfer - mapping HTTP Verbs (get, post, put/patch, delete) to CRUD Actions
  # resources provides REST-ful routes to Rails resources

end
