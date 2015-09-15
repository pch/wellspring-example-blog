Rails.application.routes.draw do
  mount Wellspring::Engine, at: "/admin"

  get 'search', to: 'posts#search', as: :search
  get '/:slug', to: 'posts#show', as: :post

  root to: 'posts#index'
end
