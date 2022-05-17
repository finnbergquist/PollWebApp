Rails.application.routes.draw do
  root "auction_app#index"
  get "auction_app" => "auction_app#index"
  get "/" => "auction_app#index"
  post "/" => "auction_app#enterBid"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
