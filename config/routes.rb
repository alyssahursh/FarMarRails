Rails.application.routes.draw do
  get 'vendors/index'

  get 'vendors/show'

  get 'vendors/new'

  get 'vendors/create'

  get 'vendors/edit'

  get 'vendors/update'

  get 'vendors/destroy'

  get 'sales/index'

  get 'sales/show'

  get 'sales/new'

  get 'sales/create'

  get 'sales/edit'

  get 'sales/update'

  get 'sales/destroy'

  get 'products/index'

  get 'products/show'

  get 'products/new'

  get 'products/create'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  get 'markets/index'

  get 'markets/show'

  get 'markets/new'

  get 'markets/create'

  get 'markets/edit'

  get 'markets/update'

  get 'markets/destroy'

  root to: 'pages#home'

  get 'pages/home', to: 'pages#home', as: 'home'

  get 'pages/admin', to: 'pages#admin', as: 'admin'

  get 'pages/vendor', to: 'pages#vendor', as: 'vendor'

  get 'pages/market', to: 'pages#market', as: 'market'

  resources :markets, :vendors, :products, :sales

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
