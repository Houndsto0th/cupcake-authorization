Rails.application.routes.draw do

  root 'cupcakes#bakery'

#     cupcakes GET    /cupcakes(.:format)          cupcakes#index
#              POST   /cupcakes(.:format)          cupcakes#create
#  new_cupcake GET    /cupcakes/new(.:format)      cupcakes#new
# edit_cupcake GET    /cupcakes/:id/edit(.:format) cupcakes#edit
#      cupcake GET    /cupcakes/:id(.:format)      cupcakes#show
#              PATCH  /cupcakes/:id(.:format)      cupcakes#update
#              PUT    /cupcakes/:id(.:format)      cupcakes#update
# get '/cupcakes' => 'cupcakes#menu'
# post '/cupcakes' => 'cupcakes#dough'
# get '/cupcakes/new' => 'cupcakes#sprinkles'
# get '/cupcakes/:id/edit' => 'cupcakes#frosting'
# get '/cupcakes/:id' => 'cupcakes#plate'
# patch '/cupcakes/:id' => 'cupcakes#filling'
# put '/cupcakes/:id' => 'cupcakes#filling'
# delete '/cupcakes/:id' => 'cupcakes#expired'

  get '/sign-up' => 'cupcakes#bake', as: :bake
  post '/sign-up' => 'cupcakes#display'
  get '/sign-in' => 'cupcakes#rebake', as: :rebake
  post '/sign-in' => 'cupcakes#another_batch'
  delete '/sign-out' => 'cupcakes#eat', as: :eat
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
