Rails.application.routes.draw do
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    post '/user/invite', to: 'users#invite'
  end
end
