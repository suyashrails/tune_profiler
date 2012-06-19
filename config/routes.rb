TuneProfiler::Application.routes.draw do
  get "pages/home"

  get "pages/contact"

  resources :user_playlists

  resources :playlists

  resources :users_roles

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
