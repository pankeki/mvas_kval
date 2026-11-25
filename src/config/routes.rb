Rails.application.routes.draw do
  get "vet_visit/index"
  get "vet_visit/new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  root "dashboard#index"

  get "pets", to: "pet#index", as: :pets
  get "pets/new", to: "pet#new", as: :new_pet
  get "pets/:id", to: "pet#show", as: :pet

  get "vaccinations", to: "vaccination#index", as: :vaccinations
  get "vaccinations/new", to: "vaccination#new", as: :new_vaccination

  get "vet_visits", to: "vet_visit#index", as: :vet_visits
  get "vet_visits/new", to: "vet_visit#new", as: :new_vet_visit

  get "medications", to: "medication#index", as: :medications
  get "medications/new", to: "medication#new", as: :new_medication
end
