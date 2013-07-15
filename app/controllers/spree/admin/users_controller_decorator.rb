Spree::Admin::UsersController.class_eval do

  def generate_product_key
    user.product_key = SecureRandom.hex(24)
    if user.save
      flash[:success] = Spree.t('customer_details_updated')
      redirect_to edit_admin_user_path(user)
    else
      render :action => :edit
    end
  end
  
  def activate_product_key
    user.key_is_valid = true
    if user.save
      flash[:success] = Spree.t('customer_details_updated')
      redirect_to edit_admin_user_path(user)
    else
      render :action => :edit
    end
  end
  
  def reset_activation_count
    user.activation_count = 0
    if user.save
      flash[:success] = Spree.t('customer_details_updated')
      redirect_to edit_admin_user_path(user)
    else
      render :action => :edit
    end
  end
  
  def invalidate_product_key
    user.key_is_valid = false
    user.product_key = ""
    if user.save
      flash[:success] = Spree.t('customer_details_updated')
      redirect_to edit_admin_user_path(user)
    else
      render :action => :edit
    end
  end

  private

  def user
    @user ||= Spree.user_class.accessible_by(current_ability, :read).find(params[:id])
  end
  
end