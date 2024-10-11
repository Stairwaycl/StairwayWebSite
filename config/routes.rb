Rails.application.routes.draw do
  # Servicio integral
  get '/services', to: 'services#index', as: 'services'

  # Subservicios
  get '/services/visual-identity', to: 'services#visual_identity', as: 'visual_identity'
  get '/services/custom-development', to: 'services#custom_development', as: 'custom_development'
  get '/services/seo-optimization', to: 'services#seo_optimization', as: 'seo_optimization'
  get '/services/maintenance-update', to: 'services#maintenance_update', as: 'maintenance_update'
  get '/services/digital-marketing', to: 'services#digital_marketing', as: 'digital_marketing'

  # Portafolio
  get '/portfolio', to: 'portfolios#index', as: 'portfolio'
  get '/portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # Contacto
  get '/contact', to: 'pages#contact', as: 'contact'

  # Raíz del sitio
  root "pages#index"
end
