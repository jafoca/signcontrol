Admin.controllers :base do

  get :index, :map => "/" do
    @today = DailySchedule.first(:date => Date.today.to_s)
    render "base/index"
  end
end
