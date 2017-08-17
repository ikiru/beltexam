class MeetupsController < ApplicationController

  def show
    @meetups = Meetup.find.all
  end

  def new
  end

  def create
    @meetup = Meetup.find_by_email(params[:email])
    if @meetup && @meetup.authenticate(params[:password])
      session[:user_id] = @user.id
      # redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = ["Invalid Combination"]
      # redirect_to "/session/new"
    end
  end

  def edit
    @meetup = Meetup.find(params[:id])
  end

  def update
    @meetup = Meetup.find(params[:id])
    if @meetup.update meetup_params
      # redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      # redirect_to "/users/#{@user.id}/edit"
    end
  end

  def delete
    @meetup = Meetup.find(params[:id])
    if @meetup.destroy
      # redirect_to "/users/new"
    else
      # redirect_to "/users/#{@user.id}/edit"
    end
  end
end
