FBCanvasRails::Application.routes.draw do
  match '/facebook/channel', to: 'facebook#channel', :via => :all
  match '/auth/:provider/callback', to: 'session#create', :via => :all
  match '/auth/failure', to: 'session#destroy', :via => :all

  match '/', to: 'home#index', :via => :all
  match '/page1', to: 'home#page1', :via => :all
  match '/page2', to: 'home#page2', :via => :all
  match '/page3', to: 'home#page3', :via => :all
end
