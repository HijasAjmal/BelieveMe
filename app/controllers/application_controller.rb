class ApplicationController < ActionController::Base
  # before_action :set_current_user
  #
  #
  # def current_user
  #   if session[:current_user_id].present?
  #     user = User.find(session[:current_user_id])
  #   else
  #     nil
  #   end
  # end
  #
  # protected
  # def set_current_user
  #   Authorization.current_user = current_user
  # end
  #
  # def permission_denied
  #   flash[:notice] = "Sorry, you are not allowed to access that page.";
  #   redirect_to ("/")
  # end
  #
  # def find_user_type
  #   return "admin" if current_user.admin
  #   return "teacher" if current_user.teacher
  #   return "student" if current_user.student
  # end
end
