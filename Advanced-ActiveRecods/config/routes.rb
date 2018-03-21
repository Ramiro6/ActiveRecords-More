Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies do
    resources :notes, module: :companies
  end

  resources :employees do
    resources :notes, module: :employees
  end
end
