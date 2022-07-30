Rails.application.routes.draw do
  root 'homes#top'

  get 'login', to: 'user_sessions#new'  # 追記
  post 'login', to: 'user_sessions#create'  # 追記
  delete 'logout', to: 'user_sessions#destroy'  # 追記
  get 'signup', to: 'users#new'

  resources :users, only: %i(create)
end
  