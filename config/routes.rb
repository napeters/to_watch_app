Rails.application.routes.draw do
  resources :users do
    resources :shows do
      member do
        get :done
        get :start
      end
    end
  end

  root "users#index"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get  "/logout" => "sessions#destroy"

end
