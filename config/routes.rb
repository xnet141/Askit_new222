Rails.application.routes.draw do
  resource :session, only: %i[new create destroy]

  resources :users, only: %i[new create edit update show]

  resources :questions do
    resources :answers, except: %i[new show]
  end
  
  # get '/questions', to: 'questions#index'
  # get '/questions/new', to: 'questions#new'
  # get '/questions/:id', to: 'questions#show'
  # get '/questions/:id/edit', to: 'questions#edit'
  # post '/questions', to: 'questions#create'
  
  root "pages#index"
end
