Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  match '/movies/:id/director', to: 'movies#show_director', :as => :director
  root :to => redirect('/movies')
end
