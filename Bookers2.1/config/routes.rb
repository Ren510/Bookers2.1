Rails.application.routes.draw do
  root 'homes#top'
  get 'home/index'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end