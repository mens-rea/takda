Rails.application.routes.draw do
  match '/websocket', to: ActionCable.server, via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount_ember_app :frontend, to: '/'
end
