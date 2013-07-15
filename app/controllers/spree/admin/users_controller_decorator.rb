Spree::Admin::UsersController.class_eval do

  def generate_product_key
    user.product_key = SecureRandom.hex(24)
    user.save!
  end

  private

  def user
    @user ||= Spree.user_class.accessible_by(current_ability, :read).find(params[:id])
  end
  
end