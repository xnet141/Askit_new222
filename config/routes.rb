Rails.application.routes.draw do
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
