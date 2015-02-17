Rails.application.routes.draw do

	resources :error_messages

  root to: 'error_messages#index'
  devise_for :users
  resources :users do
	  resources :error_messages
  end
end
