Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tags
  resources :users
  resources :todos
end


#the tutorial I'm coding along with is showing them use a command called "namespace." 
#might be interesting to try using that and seeing what happens, but maybe in a later build. I really have to get this done.