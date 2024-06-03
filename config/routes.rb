Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 root to: 'pages#home'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get 'question', to: 'pages#question'
  get 'answer', to: 'pages#answer'
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")

  # root "posts#index"
end
