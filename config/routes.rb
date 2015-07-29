Rails.application.routes.draw do
  get '/:id' => 'application#show'
  get '/show' => 'application#display'
end
