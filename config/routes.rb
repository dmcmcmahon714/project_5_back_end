 Rails.application.routes.draw do
  get 'sessions/new'
  devise_for :users
	resources :posts do
		resources :comments, :likes
	end

	root 'welcome#index'
end