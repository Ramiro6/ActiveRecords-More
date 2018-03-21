Rails.application.routes.draw do
  root to: 'home#index'
  resources :notes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :companies do
  #   resources :notes, module: :companies
  # end

  # resources :employees do
  #   resources :notes, module: :employees
  # end
end
