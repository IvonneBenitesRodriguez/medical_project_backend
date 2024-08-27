Rails.application.routes.draw do
  # Definir las rutas de tu API
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :show, :update, :destroy]
      resources :professions, only: [:index]
      resources :specialties, only: [:index]
    end
  end

  # Revelar el estado de salud en /up
  get 'up', to: 'rails/health#show', as: :rails_health_check

  # Rutas adicionales para servicios como PWA
  get 'service-worker', to: 'rails/pwa#service_worker', as: :pwa_service_worker
  get 'manifest', to: 'rails/pwa#manifest', as: :pwa_manifest

  # Rutas para manejar archivos estáticos (si es necesario)
  # Puedes eliminar esta línea si no usas archivos estáticos desde Rails
  # get '*path', to: 'static#index'
end
