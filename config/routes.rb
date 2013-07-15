Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :users do
      member do
        put :generate_product_key
        put :invalidate_product_key
        put :activate_product_key
        put :reset_activation_count
      end
    end
  end
end