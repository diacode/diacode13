Diacode13::Application.routes.draw do
  root :to => 'pages#index'

  get 'services' => 'pages#services'
  get "work" => "pages#work"

  resources :inquiries, path: 'contact', :only => [:new, :create], 
            path_names: { :new => ''}
end
