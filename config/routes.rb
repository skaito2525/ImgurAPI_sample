Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "image#index"
  get "upload" => "image#form"
  post "upload" => "image#upload"


end
