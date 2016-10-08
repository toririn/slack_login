Rails.application.routes.draw do
  root controller: :sessions, action: :index
  get 'sessions/index'

  get 'sessions/new'

  get 'sessions/acs'

  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
