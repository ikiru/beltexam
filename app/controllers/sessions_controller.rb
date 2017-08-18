class SessionsController < ApplicationController
  def new
    #code
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/meetups/#{@user.id}"
    else
      flash[:errors] = ["Invalid Combination"]
      redirect_to "/"
    end
  end

  def destroy
    reset_session
    redirect_to "/sessions/new"
  end
end
