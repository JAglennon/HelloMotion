class TapController < UIViewController

# noinspection RubySuperCallWithoutSuperclassInspection
def viewDidLoad
  super
  self.view.backgroundColor = UIColor.whiteColor
  @label = UILabel.alloc.initWithFrame(CGRectZero)
  @label.text = "Taps"
  @label.sizeToFit
  @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
  self.view.addSubview @label

  self.title = "Tap(#{self.navigationController.viewControllers.count})"

  right_button = UIBarButtonItem.alloc.initWithTitle("Push", style: UIBarButtonItemStyleBordered, target:self, action:'push')
  self.navigationItem.rightBarButtonItem = right_button

  def push
    new_controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    self.navigationController.pushViewController(new_controller, animated: true)
  end

end

end
