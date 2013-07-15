class AddProductKeyToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :product_key, :string
    add_column :spree_users, :activation_count, :integer
    add_column :spree_users, :key_is_valid, :boolean
  end
end
