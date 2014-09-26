class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
    	t.string   "name"
	    t.date     "birthday"
	    t.time     "lunchtime"
	    t.datetime "apocalypse"
	    t.datetime "epoch"
	    t.date     "christmas"
	    t.time     "alarm_setting"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.time     "suppertime"
	    t.time     "beer_oclock"
	    t.time     "sleepytime"
	    t.time     "party_time"
	    t.date     "easter"
      t.timestamps
    end
  end
end
