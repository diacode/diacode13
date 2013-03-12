Diacode13::Application.routes.draw do
  root :to => 'pages#index'

  get 'services' => 'pages#services'
  get 'contact' => 'pages#contact'
  get "work" => "pages#work"

  resources :inquiries, :only => [:new, :create]
end
