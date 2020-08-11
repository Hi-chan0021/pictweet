Rails.application.routes.draw do
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
