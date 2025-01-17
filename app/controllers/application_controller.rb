class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    skip_before_action :verify_authenticity_token, :only => :changeRestriction
  
    helper_method :is_admin?
  
    def is_admin?
      return true if session[:admin]
    end
  
end
