class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.boolean :watched
      t.boolean :watching
      t.boolean :to_watch
      t.integer :priority
      t.integer :current_episode
      t.integer :current_season
      t.integer :seasons

      t.timestamps
    end
  end
end
