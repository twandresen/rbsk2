Rails.application.routes.draw do
  root "home#index"

  get "traditional" => "home#traditional"
  get "modern" => "home#modern"
  get "visual" => "home#visual"
  get "css" => "home#css"

end

