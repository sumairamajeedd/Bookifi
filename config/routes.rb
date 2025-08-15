Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Root route
  root 'pages#index'
  
  # Static pages with proper route names
  get 'features', to: 'pages#features', as: 'features'
  get 'testimonials', to: 'pages#testimonials', as: 'testimonials'
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end

