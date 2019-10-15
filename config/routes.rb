Rails.application.routes.draw do
  
  resources :aviaries do
    resources :posts
  end

  root 'aviaries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
