Signcontrol.controllers :daily_schedules do
  # get :index, :map => "/foo/bar" do
  #   session[:foo] = "bar"
  #   render 'index'
  # end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end

  get :index do
    @schedules = DailySchedule.all(:order => 'created_at desc')
    render 'daily_schedules/index'
  end

  get :rss do
  end

  get :show, :with => :id do
    @schedule = DailySchedule.find_by_id(params[:id])
    render 'daily_schedules/show'
  end
  
  get :rss_static do
    render 'daily_schedules/rss_static'
  end

end
