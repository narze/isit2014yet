describe "MainViewController" do
  tests MainViewController

  before do
    @label = controller.instance_variable_get "@label"
  end

  it "should exist" do
    controller.should.not == nil
  end

  it "has @label as a subview" do
    controller.view.subviews.should.include @label
  end

  describe "@label" do
    it "should exist" do
      @label.should.not == nil
    end

    it "should have text" do
      @label.text.should == "Is it 2014 yet?"
    end
  end
end
