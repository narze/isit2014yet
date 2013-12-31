class MainViewController < UIViewController
  def viewDidLoad
    super

    @label = UILabel.alloc.init
    @label.text = "Is it 2014 yet?"

    self.view.addSubview @label
  end
end