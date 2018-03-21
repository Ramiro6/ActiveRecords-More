Rails.application.routes.draw do
  root to: 'home#index'
  # resources :notes, only: ['edit', 'create', 'index', 'show']
  # get 'notes/new/:id', to: 'notes#new', as: 'new_note'
  resources :users

  resources :users do
    resources :notes
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :companies do
  #   resources :notes, module: :companies
  # end

  # resources :employees do
  #   resources :notes, module: :employees
  # end
end
