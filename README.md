CLProgressIndeterminateView
===========================

Indeterminate Progress View for iOS in the Metro UI. As seen in Windows Phone 7, 8 and Windows 8.

BGIndeterminateProgressBar.h & .m
Created by Benjamin G. Deckys on 28 December, 2012.
Last modified 8 January, 2013
  
Permission is granted to use this code free of charge in any iOS project,
With credit to myself - @cocotutch.

Any modifications, improvements etc, should be merged with the source GitHub.

![](/cocotutch/CLProgressIndeterminateView/raw/master/IndeterminateWindowsPhoneProgressBar.png)

This drop-in Metro-style Indeterminate Progress Indicator for iOS is based on Jeff Wilcox' open-source "PerformanceProgressBar" for Windows Phone's own SDK.
His project is now abandoned as Microsoft began distributing an indicator that used the compositor (animator) thread, as opposed to the main CPU thread.

Reference: [Jeff Wilcox - PerformanceProgressBar](http://www.jeff.wilcox.name/2010/08/performanceprogressbar/)

How to use:

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

Any changes made to these files should be merged here. This code is available to use in any iOS project with credit to myself - the creator either In-App or by other-means (iTunes Store description for example).

Regards,

cocotutch
