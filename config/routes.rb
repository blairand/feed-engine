Softline::Application.routes.draw do
  root to: 'dashboard#show'
  resource :dashboard

  get '/auth/github' => 'authentication#github_auth', as: 'github_auth'
  
  get '/auth/github/callback' => 'authentication#github_callback', as: 'github_callback'

  get '/logout' => 'authentication#destroy', as: 'logout'
end
