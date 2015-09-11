Rails.application.routes.draw do
  mount Wellspring::Engine, at: "/admin"

  get '/:slug', to: 'posts#show', as: :post
  root to: 'posts#index'
end
