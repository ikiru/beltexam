class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :require_login
  #
  #   def require_login
  #     redirect_to "/" unless session[:user_id]
  #   end
  #
  #   def current_user
  #     return User.find(session[:user_id]) if session[:user_id]
  #   end
end
