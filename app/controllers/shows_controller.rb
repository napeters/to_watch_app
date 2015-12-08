class ShowsController < ApplicationController
  include ShowsHelper

  def index
    @user = User.find(params[:user_id])
    @user_shows = @user.shows.order('created_at DESC')
  end

  def new
    @user = User.find(params[:user_id])
    @show = Show.new
  end

  def create
    @user = User.find(params[:user_id])
    @show = Show.new(show_params)
    @show.user_id = params[:user_id]

    if @show.save
      flash.notice = "Saved!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:user_id])
    @show = Show.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @show = Show.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @show = Show.find(params[:id])

    if @show.update(show_params)
      flash.notice = "Updated!"
      redirect_to user_show_path
    else
      render template: "shows/edit"
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy

    flash.notice = "Deleted!"
    redirect_to :back
  end

  def done
    user = User.find(params[:user_id])
    show = Show.find(params[:id])
    show.watched = true
    show.watching = false
    show.save

    redirect_to :back
  end

  def start
    user = User.find(params[:user_id])
    show = Show.find(params[:id])
    show.to_watch = false
    show.watching = true
    show.save

    redirect_to :back
  end
end
