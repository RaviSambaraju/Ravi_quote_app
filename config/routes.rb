Rails.application.routes.draw do
root :to => 'login#index'
get 'login',to: 'login#index'
post 'login', to: 'login#check'
get '/register', to: 'register#new'
post "register/create" 
get '/login', to: 'login#sample'
post 'login', to: 'login#new'
  
resources :microposts
#root :to => 'microposts#index'
get '/microposts/:id', to: 'microposts#new'
post  '/microposts/:user_id', to: 'microposts#create'
post '/microposts/:id/edit', to: 'microposts#edit'
get '/microposts', to:   'microposts#show'
put '/microposts/:id', to: 'microposts#update'
delete '/microposts/:id', to:   'microposts#destroy'

end
