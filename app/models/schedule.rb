class Schedule < ActiveRecord::Base

	extend SqlSearchableSortable

	sql_searchable :name, :birthday, :lunchtime, :apocalypse, :epoch, :christmas, :alarm_setting, :suppertime, :beer_oclock, :sleepytime, :party_time, :easter

	sql_sortable :name, :birthday, :lunchtime, :apocalypse, :epoch, :christmas, :alarm_setting, :suppertime, :beer_oclock, :sleepytime, :party_time, :easter
end
