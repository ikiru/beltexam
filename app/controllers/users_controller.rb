class UsersController < ApplicationController
  # skip_before_action :require_login, only: [:new, :create]

  def index
    return render '/users/new'
  end

  def new
    #code
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to "/"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update user_params
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/#{@user.id}/edit"
    end

  end

  def delete
    @user = User.find(params[:id])
    if @user.destroy
      reset_session
      redirect_to "/users/new"
    else
      redirect_to "/users/#{@user.id}/edit"
    end
  end

  private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :location, :state, :password, :password_confirmation)
    end

    def auth
        return redirect_to "/users/#{current_user}" unless current_user.id == params[:id].to_i
    end
end
