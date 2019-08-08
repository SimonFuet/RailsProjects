Rails.application.routes.draw do
  get 'articles' => 'articles#index'
  get 'articles/:id' => 'articles#show'

  post 'comments/:article_id' => 'comments#create'

  root 'articles#index'
end
