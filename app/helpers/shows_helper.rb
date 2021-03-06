module ShowsHelper

  def show_params
    params.require(:show).permit(
      :title,
      :watched,
      :watching,
      :to_watch,
      :priority,
      :current_episode,
      :current_season,
      :seasons,
      :day_of_week
    )
  end

end
