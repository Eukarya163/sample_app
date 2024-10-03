Rails.application.routes.draw do
  resources :lists
  get 'lists/new'
  get 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/show'
  get 'lists/edit'
  get '/top' => 'homes#top'
  # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
