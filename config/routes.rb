Diacode13::Application.routes.draw do
  root :to => 'pages#index'
  match "work" => "pages#work"
end
