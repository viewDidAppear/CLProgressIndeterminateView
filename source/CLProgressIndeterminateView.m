//
//  CLProgressIndeterminateView.h & .m
//  Created by Benjamin G. Deckys on 28 December, 2012.
//  Last modified 8 January, 2013
//  
//  Permission is granted to use this code free of charge in any iOS project,
//  With credit to myself - @cocotutch.
//
//  Any modifications, improvements etc, should be merged with the source GitHub.

#import "CLProgressIndeterminateView.h"

@implementation CLProgressIndeterminateView

@synthesize blockOne, blockTwo, blockThree, blockFour, blockFive, track;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //We call the startAnimating selector on initWithFrame so there isn't a delay.
        [self.layer setMasksToBounds:YES];
    }
    return self;
}

- (void) startAnimating {
    //We allocate all the dots and their track in here because they are removed and destroyed when we stopAnimating.
    
    //Ensure the track is high enough.    
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, 6)];
    
    //Allocate track
    track = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 6)];
    
    //Allocate dots
    blockOne = [[UIView alloc] initWithFrame:CGRectMake(-100, 1, 3, 3)];
    blockTwo = [[UIView alloc] initWithFrame:CGRectMake(-100, 1, 3, 3)];
    blockThree = [[UIView alloc] initWithFrame:CGRectMake(-100, 1, 3, 3)];
    blockFour = [[UIView alloc] initWithFrame:CGRectMake(-100, 1, 3, 3)];
    blockFive = [[UIView alloc] initWithFrame:CGRectMake(-100, 1, 3, 3)];
    
    //Add subviews
    [track addSubview:blockOne];
    [track addSubview:blockTwo];
    [track addSubview:blockThree];
    [track addSubview:blockFour];
    [track addSubview:blockFive];
    [self addSubview:track];    
    
    //Set background colours -- For the best effect, change only if you want a specific background color.
    [self setBackgroundColor:[UIColor clearColor]];
    [track setBackgroundColor:[UIColor clearColor]];
    
    //Set the dot colours. These can be all one color, different colors, or a user-set color.
    UIColor *color = [UIColor whiteColor]; //We're just using white for the lot here. You could set individual colours or leave it. Create your own from RGB, etc. etc.
    
    blockOne.backgroundColor = color;
    blockTwo.backgroundColor = color;
    blockThree.backgroundColor = color;
    blockFour.backgroundColor = color;
    blockFive.backgroundColor = color;
    
    //Release the color for memory reasons. UIColor tends to leak..
    color = nil;
    
    //Begin the animation...
    [self performSelector:@selector(moveBlock1) withObject:nil afterDelay:0.2];
}

// We animate the whole lot, after 0.2 seconds per block. This set of methods ensured no clashes in timing.

- (void) moveBlock1 {
    //We start to move block 1...
    [CATransaction begin];
    [CATransaction setValue:[NSNumber numberWithFloat:2.5]
                     forKey:kCATransactionAnimationDuration];
    
    anim1 = nil;
    anim1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [anim1 setBeginTime:0.00];
    [anim1 setDuration:2.5];
    times1 = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.33], [NSNumber numberWithFloat:0.66], [NSNumber numberWithFloat:1.0], nil];
    [anim1 setKeyTimes:times1];
    values1 = [NSArray arrayWithObjects:[NSValue valueWithCGPoint: CGPointMake(-100.0, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width/2.5, 1.)], [NSValue valueWithCGPoint: CGPointMake((self.frame.size.width/2.5)+89, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width+80, 1.)], nil];
    [anim1 setValues:values1];
    timings1 = [NSArray arrayWithObjects:nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], nil];
    [anim1 setTimingFunctions:timings1];
    [anim1 setRepeatCount:HUGE_VALF];
    [blockOne.layer addAnimation:anim1 forKey:@"position"];
    
    anim1 = nil;
    [CATransaction commit];
    
    //After 0.2 seconds, we start to move block 2...
    [self performSelector:@selector(moveBlock2) withObject:nil afterDelay:0.2];
}

- (void) moveBlock2 {
    //We start to move block 2...
    [CATransaction begin];
    [CATransaction setValue:[NSNumber numberWithFloat:2.5]
                     forKey:kCATransactionAnimationDuration];
    
    anim1 = nil;
    anim1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [anim1 setBeginTime:0.00];
    [anim1 setDuration:2.5];
    times1 = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.33], [NSNumber numberWithFloat:0.66], [NSNumber numberWithFloat:1.0], nil];
    [anim1 setKeyTimes:times1];
    values1 = [NSArray arrayWithObjects:[NSValue valueWithCGPoint: CGPointMake(-100.0, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width/2.5, 1.)], [NSValue valueWithCGPoint: CGPointMake((self.frame.size.width/2.5)+89, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width+80, 1.)], nil];
    [anim1 setValues:values1];
    timings1 = [NSArray arrayWithObjects:nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], nil];
    [anim1 setTimingFunctions:timings1];
    [anim1 setRepeatCount:HUGE_VALF];
    [blockTwo.layer addAnimation:anim1 forKey:@"position"];
    
    [CATransaction commit];
    
    //After 0.2 seconds, we start to move block 3...
    [self performSelector:@selector(moveBlock3) withObject:nil afterDelay:0.2];
}

- (void) moveBlock3 {
    //We start to move block 3...
    [CATransaction begin];
    [CATransaction setValue:[NSNumber numberWithFloat:2.5]
                     forKey:kCATransactionAnimationDuration];
    
    anim1 = nil;
    anim1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [anim1 setBeginTime:0.00];
    [anim1 setDuration:2.5];
    times1 = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.33], [NSNumber numberWithFloat:0.66], [NSNumber numberWithFloat:1.0], nil];
    [anim1 setKeyTimes:times1];
    values1 = [NSArray arrayWithObjects:[NSValue valueWithCGPoint: CGPointMake(-100.0, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width/2.5, 1.)], [NSValue valueWithCGPoint: CGPointMake((self.frame.size.width/2.5)+89, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width+80, 1.)], nil];
    [anim1 setValues:values1];
    timings1 = [NSArray arrayWithObjects:nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], nil];
    [anim1 setTimingFunctions:timings1];
    [anim1 setRepeatCount:HUGE_VALF];
    [blockThree.layer addAnimation:anim1 forKey:@"position"];
    
    [CATransaction commit];
    
    //After 0.2 seconds, we start to move block 4...
    [self performSelector:@selector(moveBlock4) withObject:nil afterDelay:0.2];
}

- (void) moveBlock4 {
    //We start to move block 4...
    [CATransaction begin];
    [CATransaction setValue:[NSNumber numberWithFloat:2.5]
                     forKey:kCATransactionAnimationDuration];
    
    anim1 = nil;
    anim1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [anim1 setBeginTime:0.00];
    [anim1 setDuration:2.5];
    times1 = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.33], [NSNumber numberWithFloat:0.66], [NSNumber numberWithFloat:1.0], nil];
    [anim1 setKeyTimes:times1];
    values1 = [NSArray arrayWithObjects:[NSValue valueWithCGPoint: CGPointMake(-100.0, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width/2.5, 1.)], [NSValue valueWithCGPoint: CGPointMake((self.frame.size.width/2.5)+89, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width+80, 1.)], nil];
    [anim1 setValues:values1];
    timings1 = [NSArray arrayWithObjects:nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], nil];
    [anim1 setTimingFunctions:timings1];
    [anim1 setRepeatCount:HUGE_VALF];
    [blockFour.layer addAnimation:anim1 forKey:@"position"];
    
    [CATransaction commit];
    
    //After 0.2 seconds, we start to move in the final block...
    [self performSelector:@selector(moveBlock5) withObject:nil afterDelay:0.2];
}

- (void) moveBlock5 {
    //Moving the final block...
    [CATransaction begin];
    [CATransaction setValue:[NSNumber numberWithFloat:2.5]
                     forKey:kCATransactionAnimationDuration];
    
    anim1 = nil;
    anim1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [anim1 setBeginTime:0.00];
    [anim1 setDuration:2.5];
    times1 = [NSArray arrayWithObjects:[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.33], [NSNumber numberWithFloat:0.66], [NSNumber numberWithFloat:1.0], nil];
    [anim1 setKeyTimes:times1];
    values1 = [NSArray arrayWithObjects:[NSValue valueWithCGPoint: CGPointMake(-100.0, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width/2.5, 1.)], [NSValue valueWithCGPoint: CGPointMake((self.frame.size.width/2.5)+89, 1.)], [NSValue valueWithCGPoint: CGPointMake(self.frame.size.width+80, 1.)], nil];
    [anim1 setValues:values1];
    timings1 = [NSArray arrayWithObjects:nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], nil, [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], nil];
    [anim1 setTimingFunctions:timings1];
    [anim1 setRepeatCount:HUGE_VALF];
    [blockFive.layer addAnimation:anim1 forKey:@"position"];
    
    [CATransaction commit];
}

- (void) stopAnimating {
    //In here, we instantaneously stop the animations by removing them, destroy the blocks and remove them from the view.
    //You could alter the "afterDelay:" parameter to allow for an animation to be performed when you call "stopAnimating" from your View Controller.
    
    //Example:
    //[UIView beginAnimations:nil context:NULL]; blocks to fade/spin/ out the lot before everything is destroyed.
    [self performSelector:@selector(removeDots) withObject:nil afterDelay:0.0];
}

- (void) removeDots {
    //Stop all animations
    [blockOne.layer removeAllAnimations];
    [blockTwo.layer removeAllAnimations];
    [blockThree.layer removeAllAnimations];
    [blockFour.layer removeAllAnimations];
    [blockFive.layer removeAllAnimations];
    //[track.layer removeAllAnimations]; //In case you animate the track as well, uncomment this line!
    
    //Remove and Destroy the Blocks and their Track.    
    [blockOne removeFromSuperview];
    [blockTwo removeFromSuperview];
    [blockThree removeFromSuperview];
    [blockFour removeFromSuperview];
    [blockFive removeFromSuperview];
    [track removeFromSuperview];
    
    //Release them from Memory until they need to be used again...
    blockOne = nil;
    blockTwo = nil;
    blockThree = nil;
    blockFour = nil;
    blockFive = nil;
    track = nil;
}

@end
