Spree::Admin::UsersController.class_eval do

  def generate_product_key
    user.product_key = SecureRandom.hex(24)
    user.save!
    update_user
  end
  
  def update_user
    authorize! :update, user
    if user.update_attributes(params[:user])
      respond_with(user, :status => 200, :default_template => :edit)
    else
      invalid_resource!(user)
    end
  end

  private

  def user
    @user ||= Spree.user_class.accessible_by(current_ability, :read).find(params[:id])
  end
  
end