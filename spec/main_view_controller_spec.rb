describe "MainViewController" do
  tests MainViewController

  before do
    @label = controller.instance_variable_get "@label"
    @is_2014_label = controller.instance_variable_get "@is_2014_label"
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

  describe "@is_2014_label" do
    it "should exist" do
      @is_2014_label.should.not == nil
    end

    it "should have text" do
      @is_2014_label.text.should == "NO"
    end

    it "should align center" do
      @is_2014_label.textAlignment.should == NSTextAlignmentCenter
    end
  end
end
