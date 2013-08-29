Mousse::Application.routes.draw do
  get 'admin' => "admin#index"
  get 'pageviews' => "admin#pageviews"

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :thangs, path: 'reccos'

  get 'about' => 'dashboard#about'

  root 'dashboard#index'
end
