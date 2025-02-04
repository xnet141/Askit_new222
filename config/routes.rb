# frozen_string_literal: true

Rails.application.routes.draw do
  resource :session, only: %i[new create destroy show]

  resources :users, only: %i[new create edit update show]

  resources :questions do
    resources :answers, except: %i[new show]
  end

  namespace :admin do
    resources :users, only: %i[index]
  end  

  get '/users', to: 'users#new' # добавил от себя, так как при перезагрузке страницы на new выдает ошибку пути

  # get '/questions', to: 'questions#index'
  # get '/questions/new', to: 'questions#new'
  # get '/questions/:id', to: 'questions#show'
  # get '/questions/:id/edit', to: 'questions#edit'
  # post '/questions', to: 'questions#create'

  root 'pages#index'
end
