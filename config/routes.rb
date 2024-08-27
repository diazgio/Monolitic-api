Rails.application.routes.draw do
  devise_for :clients
  devise_for :companies
  devise_for :admins

  namespace :api do
    namespace :v1 do
      resources :clients
      devise_for :clients, controllers: {
        tokens: 'api/v1/sessions'
      }
    end
  end


  root 'pages#home'
end
