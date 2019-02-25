class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]

  def signin_user_page

  end


  def signin_user
    @user = User.where(email: params[:email], password: Digest::SHA1.hexdigest(params[:password])).first
    if @user.present?
      if @user.profile_status
        # session[:current_user_id] = @user
        redirect_to dashboard_admins_path if @user.admin
        redirect_to dashboard_teachers_path if @user.teacher
        redirect_to dashboard_students_path if @user.student
      else
        flash[:notice] = "Please Confirm Your account with the link in your mail..."
        redirect_to signin_user_page_users_path
      end
    else
      flash[:notice] = "User Name or Password Incorrect......!"
      redirect_to signin_user_page_users_path
    end
  end

  def signup_user_page
    @user = User.new
  end


  # POST /users
  # POST /users.json
  #########signup user record here##########
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Confirm Your account with the link in your mail...!"
      render signup_user_page_users_path
    else
      redirect_to  signup_user_page_users_path
    end
  end


  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_user
  #     @user = User.find(params[:id])
  #   end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def user_params
    #   params.fetch(:user, {})
    # end
    # private

  def user_params
    params.require(:user).permit(:first_name, :middle_name, :last_name, :email, :password, :student, :teacher)
  end
end
