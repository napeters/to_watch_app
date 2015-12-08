class UsersController < ApplicationController
  include UsersHelper

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      flash.notice = "Account created!"
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end

  end

  def show
    @user = User.find(params[:id])
    @user_shows = @user.shows.order('created_at DESC')
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash.notice = "Account updated!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil

    flash.notice = "Account deleted!"
    redirect_to "/"
  end
end
