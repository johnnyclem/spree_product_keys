Spree::Admin::UsersController.class_eval do

  private

  def user
    @user ||= Spree.user_class.accessible_by(current_ability, :read).find(params[:id])
  end
  
end