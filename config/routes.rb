Rails.application.routes.draw do
  root 'pages#index'
  get 'compare', to: 'pages#compare'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
