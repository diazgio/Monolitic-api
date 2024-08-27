Rails.application.routes.draw do
  devise_for :companies
  devise_for :admins
  root 'pages#home'
end
