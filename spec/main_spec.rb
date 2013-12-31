describe "Application 'isit2014yet'" do
  before do
    @app = UIApplication.sharedApplication
    @window = @app.delegate.instance_variable_get "@window"
  end

  it "has one window" do
    @app.windows.size.should == 1
  end

  it "has rootViewController" do
    @window.rootViewController.should.not == nil
  end
end
