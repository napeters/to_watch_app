class AddDayOfWeekToShows < ActiveRecord::Migration
  def change
    add_column :shows, :day_of_week, :string
  end
end
