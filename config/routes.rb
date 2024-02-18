Rails.application.routes.draw do
  resources :contacts, only: %i[ index ] do
    collection do
      post :search_contacts
      post :contact_details
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contacts#index'
end
