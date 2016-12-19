Rails.application.routes.draw do
  root 'reads#index'
  post '/api/v1/reads', to: 'reads#create'
end
