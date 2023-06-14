Rails.application.routes.draw do
  get '/:locale' => 'employees#index'
  root 'employees#index'

  scope '/:locale', locale: /#{I18n.available_locales.join("|")}/ do
    resources :employees, only: :index
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
