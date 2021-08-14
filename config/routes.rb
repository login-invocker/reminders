Rails.application.routes.draw do
  resources :reminders
  post '/reminders/attach', 'reminders#attach'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
