Rails.application.routes.draw do
  root 'employees#index'

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    resources :employees, only: [:index, :show]
  end
end
