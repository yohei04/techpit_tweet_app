class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    static_pages_home_path
  end


  # deviseのストロングパラメーターを編集
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name user_name)) 
  end

  
end
