class DemoController < UIViewController
  def viewDidLoad
    self.navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithTitle('Capture', style:UIBarButtonItemStylePlain, target:self, action:'onCapture')
  end

  def onCapture
    scanViewController = CardIOPaymentViewController.alloc.initWithPaymentDelegate(self)
    scanViewController.appToken = # fill in
    self.presentModalViewController(scanViewController, animated:true)
  end

  def userDidCancelPaymentViewController(scanViewController)
    NSLog("User canceled payment info")
    scanViewController.dismissModalViewControllerAnimated(true)
  end
 
  def userDidProvideCreditCardInfo(info, inPaymentViewController:scanViewController)
    NSLog("Received card info. Number: %@, expiry: %02i/%i, cvv: %@.", info.redactedCardNumber, info.expiryMonth, info.expiryYear, info.cvv)
    scanViewController.dismissModalViewControllerAnimated(true)
  end
end
