Rails.application.routes.draw do
  root 'websites#new'
  get '/websites/:seg' => 'websites#external_link'
  resources :websites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
