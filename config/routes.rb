Rails.application.routes.draw do
	root "home#index"

	resources :partners, only: [:index] do
		collection do
      get "kostin" => "partners#kostin", as: :kostin
      get "beaulieu" => "partners#beaulieu", as: :beaulieu
      get "saunders" => "partners#saunders", as: :saunders
      get "ready" => "partners#ready", as: :ready
      get "hall" => "partners#hall", as: :hall
      get "carroll" => "partners#carroll", as: :carroll
		end
	end

	resources :practices, only: [:index] do
		collection do
      get "attorneys" => "practices#attorneys", as: :attorneys
      get "health-care-providers" => "practices#health-care-providers", as: :health_care_providers
      get "families" => "practices#families", as: :families
      get "new-adults" => "practices#new-adults", as: :new_adults
      get "seniors" => "practices#seniors", as: :seniors
      get "service-members" => "practices#service-members", as: :service_members
		end
	end

end
