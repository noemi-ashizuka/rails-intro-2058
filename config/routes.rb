Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"
  # verb path, to: "controller#action, as: :prefix"
  get "about", to: "pages#about", as: :about
  # get("about", {to: "pages#about", as: :about})
  # link_to about_path
  get "contact", to: "pages#contact", as: :contact
  # get "/", to: "pages#home"
end


# to generate a controller:
# in terminal:
# rails generate controller controller_name
# rails g controller controller_name
# to delete all the generated files:
# rails d controller controller_name


# start with the route
# create controller (if you don't have it)
# define the action
# create the view (same name as the action)
