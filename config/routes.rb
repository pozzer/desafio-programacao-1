Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :examples, only: :index do
    collection do
      post :upload_file
    end
  end
  root to: "examples#index"
end
