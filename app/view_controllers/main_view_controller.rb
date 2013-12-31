class MainViewController < UIViewController
  def viewDidLoad
    super

    @label = UILabel.alloc.initWithFrame CGRectMake(20, 20, 160, 40)
    @label.text = "Is it 2014 yet?"

    self.view.addSubview @label
  end
end