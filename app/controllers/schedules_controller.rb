class SchedulesController < ApplicationController
  def index
  	setup_pagination
    @schedules = Schedule.sql_search(params[:search_for]).sql_sort(@sort_by, @sort_dir)
      .paginate(per_page: @per_page, page: @page)
  end

  def new
  	@schedule = Schedule.new
  end

  def create
  	@schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:success] = "Created Schedule successfully"
      redirect_to redir_url
    else
      flash_alert(@schedule)
      render :new
    end
  end

  def edit
  	@schedule = Schedule.find(params[:id])
  end

  def update
  	@schedule = Schedule.find(params[:id])
    if @schedule.update_attributes(schedule_params)
      flash[:success] = "Updated Schedule successfully"
      redirect_to redir_url
    else
      flash_alert(@schedule)
      render :edit
    end
  end

  def destroy
  	@schedule = Schedule.find(params[:id])
    if @schedule.destroy
      flash[:success] = "Deleted Schedule successfully"
    else
      flash[:error] = "Unable to delete Schedule"
    end
    redirect_to schedules_url
  end

	private
		def schedule_params
      params.required(:schedule).permit([:name, :birthday, :lunchtime, :apocalypse, :epoch, :christmas, :alarm_setting, :suppertime, :beer_oclock, :sleepytime, :party_time, :easter])
    end
end
