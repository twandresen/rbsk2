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
      get "civil-litigation" => "practices#civil-litigation", as: :civil_litigation
      get "estate-planning" => "practices#estate-planning", as: :estate_planning
      get "fiduciary-services" => "practices#fiduciary-services", as: :fiduciary_services
      get "guardianship" => "practices#guardianship", as: :guardianship
      get "mental-health" => "practices#mental-health", as: :mental_health
      get "personal-injury" => "practices#personal-injury", as: :personal_injury
      get "probate-litigation" => "practices#probate-litigation", as: :probate_litigation
      get "real-estate" => "practices#real-estate", as: :real_estate
      get "trusts" => "practices#trusts", as: :trusts
		end
	end

end
