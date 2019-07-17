Rails.application.routes.draw do
  get 'articles' => 'articles#index'
  get 'articles/:id' => 'articles#show'

  root 'articles#index'
end
