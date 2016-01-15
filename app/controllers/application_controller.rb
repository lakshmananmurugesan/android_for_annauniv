class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def isAdmin?
    if current_user != nil
      if current_user.email == "superuser@superuser.com"
        return true
      end
    end
    return false
  end
  helper_method :isAdmin?
end
