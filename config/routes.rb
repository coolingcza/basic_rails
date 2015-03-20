BasicRailsApp::Application.routes.draw do

  get "publishers/edit"

  get "publishers/update"

  # The priority is based upon order of creation:
  # first created -> highest priority.
  
  get '/books', to: 'books#index', as: 'books'
  get '/books/new', to: 'books#new', as: 'new_book'
  post '/books/new', to: 'books#create'
  get '/books/select' => 'books#select'
  post '/books/delete' => 'books#delete'
  get '/books/:id', to: 'books#show', as: 'book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  post '/books/:id/edit', to: 'books#update'
  
  get '/publishers', to: 'publishers#index', as: 'publishers'
  get '/publishers/new', to: 'publishers#new', as: 'new_publisher'
  post '/publishers/create', to: 'publishers#create'
  get '/publishers/select', to: 'publishers#select'
  post '/publishers/delete', to: 'publishers#destroy', as: 'delete'
  get 'publishers/:id', to: 'publishers#show'
  get 'publishers/:id/books', to: 'publishers#books'
  # get 'books/:id/edit', to: 'books#edit'
#   post 'books/:id/edit', to: 'books#update'

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
