class ApplicationController < ActionController::Base

	include ExtFormSubmit

	include ExtIndexNav
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	include SqlSortSetup

	before_filter :setup_sql_sort, :only => [:index, :sort_only_index]
		   
end
