Admin.controllers :daily_schedules do

    
  get :index do
    @daily_schedules = DailySchedule.where(:date.gte => Date.today.to_s).sort(:date)
    render 'daily_schedules/index'
  end

  get :new do
    @daily_schedule = DailySchedule.new
    render 'daily_schedules/new'
  end

  post :create do
    @daily_schedule = DailySchedule.new(params[:daily_schedule])
    if @daily_schedule.save
      flash[:notice] = 'DailySchedule was successfully created.'
      redirect url(:daily_schedules, :edit, :id => @daily_schedule.id)
    else
      render 'daily_schedules/new'
    end
  end

  get :edit, :with => :id do
    @daily_schedule = DailySchedule.find(params[:id])
    render 'daily_schedules/edit'
  end

  put :update, :with => :id do
    @daily_schedule = DailySchedule.find(params[:id])
    if @daily_schedule.update_attributes(params[:daily_schedule])
      flash[:notice] = 'DailySchedule was successfully updated.'
      redirect url(:daily_schedules, :edit, :id => @daily_schedule.id)
    else
      render 'daily_schedules/edit'
    end
  end

  delete :destroy, :with => :id do
    daily_schedule = DailySchedule.find(params[:id])
    if daily_schedule.destroy
      flash[:notice] = 'DailySchedule was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy DailySchedule!'
    end
    redirect url(:daily_schedules, :index)
  end
end
