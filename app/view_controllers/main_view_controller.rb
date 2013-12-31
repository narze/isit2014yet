class MainViewController < UIViewController
  def viewDidLoad
    super

    @label = UILabel.alloc.initWithFrame CGRectMake(20, 20, 160, 40)
    @label.text = "Is it 2014 yet?"
    self.view.addSubview @label

    @is_2014_label = UILabel.alloc.initWithFrame CGRectMake(0, 100, 320, 360)
    @is_2014_label.textAlignment = NSTextAlignmentCenter
    @is_2014_label.font = UIFont.systemFontOfSize 168
    @is_2014_label.text = self.is_2014_with_date(NSDate.date) ? "YES" : "NO"
    self.view.addSubview @is_2014_label
  end

  def is_2014_with_date(date)
    components = NSCalendar.currentCalendar.components NSYearCalendarUnit, fromDate: date

    components.year >= 2014
  end
end