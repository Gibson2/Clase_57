Rails.application.routes.draw do
  resources :pokemon_toys

	get 'pokemon_toys/index'

	root 'pokemon_toys#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
