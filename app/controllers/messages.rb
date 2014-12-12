Zuoye::App.controllers :messages do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index, :map => '/' do
    @message = Message.all.order('pubdate desc, id desc')[0]
    @date = @message.pubdate == Date.today ? '今日作业' : '最新作业('+@message.pubdate.to_s+')'
    render 'index'
  end

  get :all, :map => '/all' do
    @messages = Message.all.order('pubdate desc, id desc')
    render 'all'
  end

end
