Rails.application.routes.draw do
  get 'recipe/:id', :action => 'index', :controller => 'recipes'
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
