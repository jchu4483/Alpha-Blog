Rails.application.routes.draw do
  get 'pages/home', to: 'pages#home'
  get 'pages/about', to: 'pages#about'
end
