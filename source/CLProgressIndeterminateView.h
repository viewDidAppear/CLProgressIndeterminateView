//
//  CLProgressIndeterminateView.h & .m
//  Created by Benjamin G. Deckys on 28 December, 2012.
//  Last modified 8 January, 2013
//  
//  Permission is granted to use this code free of charge in any iOS project,
//  With credit to myself - @cocotutch.
//
//  Any modifications, improvements etc, should be merged with the source GitHub.

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CLProgressIndeterminateView : UIView {
	//Blocks
    UIView *blockOne;
    UIView *blockTwo;
    UIView *blockThree;
    UIView *blockFour;
    UIView *blockFive;
    
    //Their track
    UIView *track;
    
    //Animation stuff
    CAKeyframeAnimation *anim1;
    NSArray *times1;
    NSArray *timings1;
    NSArray *values1;
}

//Properties
@property (nonatomic, strong) UIView *blockOne;
@property (nonatomic, strong) UIView *blockTwo;
@property (nonatomic, strong) UIView *blockThree;
@property (nonatomic, strong) UIView *blockFour;
@property (nonatomic, strong) UIView *blockFive;
@property (nonatomic, strong) UIView *track;

- (void) startAnimating;
- (void) stopAnimating;

@end
