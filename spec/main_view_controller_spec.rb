describe "MainViewController" do
  tests MainViewController

  before do
    @label = controller.instance_variable_get "@label"
    @is_2014_label = controller.instance_variable_get "@is_2014_label"
    @controller = controller
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

    it "should align center" do
      @is_2014_label.textAlignment.should == NSTextAlignmentCenter
    end
  end

  describe "-is_2014_with_date" do
    it "should return true, if date is after 2013" do
      date_components = NSDateComponents.alloc.init
      date_components.day = 1
      date_components.month = 1
      date_components.year = 2014
      date = NSCalendar.currentCalendar.dateFromComponents date_components

      @controller.is_2014_with_date(date).should == true
    end

    it "should return false, if date is before 2014" do
      date_components = NSDateComponents.alloc.init
      date_components.day = 31
      date_components.month = 12
      date_components.year = 2013
      date = NSCalendar.currentCalendar.dateFromComponents date_components

      @controller.is_2014_with_date(date).should == false
    end
  end
end
