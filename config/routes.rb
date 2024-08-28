Rails.application.routes.draw do
 
  # Rutas para la API
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :show, :update, :destroy]
      resources :professions, only: [:index]
      resources :specialties, only: [:index]
    end
  end

  # Rutas para otros servicios
  get 'up', to: 'rails/health#show', as: :rails_health_check
  get 'service-worker', to: 'rails/pwa#service_worker', as: :pwa_service_worker
  get 'manifest', to: 'rails/pwa#manifest', as: :pwa_manifest

  # Ruta catch-all para el frontend React
  # Si React maneja el enrutamiento del lado del cliente, esta ruta debe estar al final
  # get '*path', to: 'application#index', constraints: ->(request) { !request.xhr? && request.format.html? }

  # Puedes eliminar o comentar esta línea si no usas archivos estáticos desde Rails
  # get '*path', to: 'static#index'
end
