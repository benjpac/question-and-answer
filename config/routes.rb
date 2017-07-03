Rails.application.routes.draw do
  get 'answer/_form'

  get 'answer/new'

  get 'question/_form'

  get 'question/new'

  get 'question/show'

  get 'welcome/index'
  root 'welcome#index'

  resources :questions do
    resources :answers
  end

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
