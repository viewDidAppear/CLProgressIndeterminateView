CLProgressIndeterminateView
===========================

Indeterminate Progress View for iOS. Designed after the indeterminate bar seen in Windows Phone, and more recently Windows 8.

Created by @cocotutch on 28 December, 2012.

Last modified 8 January, 2013

License:
===========================
  
Permission is granted to use this code free of charge in any iOS project,
With credit to myself - @cocotutch. Either In-App or by other-means.

Any modifications, improvements etc, should be merged with the source GitHub.

Screenshot:
===========================

![](/cocotutch/CLProgressIndeterminateView/raw/master/IndeterminateWindowsPhoneProgressBar.png)

This drop-in Metro-style Indeterminate Progress Indicator for iOS is based on Jeff Wilcox' open-source "PerformanceProgressBar" for Windows Phone apps.
His project has been abandoned as it was rendered unneccessary by an update to Silverlight SDK.

Reference: [Jeff Wilcox - PerformanceProgressBar](http://www.jeff.wilcox.name/2010/08/performanceprogressbar/)

Usage:
===========================

```objective-c
    if(!indeterminate) { 
        //Just in case you wish to add it in viewDid/WillAppear methods, use the if statement.
        //If you're only going to add this once, or sparingly to your view, do not use the if statement.
    
        indeterminate = [[IndeterminateProgressBar alloc] initWithFrame:CGRectMake(0, 0, 320, 6)]; //Limit unless modified.
        [indeterminate setCenter:self.view.center]; //Can set alternate position, however.
        [self.view addSubview:indeterminate];
    }
```

Beginning animations are exactly the same as a stock ActivityIndicatorView:

```objective-c
    [indeterminate startAnimating];
    
    //and Stop
    
    [indeterminate stopAnimating];
```
All animatons and animatable blocks are removed from the indicator when you call 'stopAnimating' and are re-created, re-positioned and re-started from Step 0
when you call 'startAnimating' once more, should you need to.

Remember to:
```objective-c
    [release];
```
or 
```objective-c
    indeterminate = nil;
``` 
the reference when you're done, or when the view controller will be removed from the superview/is no longer needed.

Any changes made to these files should be merged here. This code is available to use in any iOS project with credit to myself.

Regards,

cocotutch
