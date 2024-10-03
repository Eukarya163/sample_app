Rails.application.routes.draw do
  resources :lists
  get 'lists/new'
  get 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/show'
  get '/top' => 'homes#top'
end
