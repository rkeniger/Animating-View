//
//  RKAppDelegate.m
//  perspective
//
//  Created by Rob Keniger on 25/05/12.
//  Copyright (c) 2012 Big Bang Software Pty Ltd. All rights reserved.
//

#import "RKAppDelegate.h"
#import "RKAnimatingView.h"
#import <QuartzCore/QuartzCore.h>

//simple random number generator
#define RKRand(x) (arc4random() % ((NSUInteger)(x) + 1))

@implementation RKAppDelegate

@synthesize window = _window;
@synthesize animatingView = _animatingView;

- (IBAction)animate:(id)sender 
{
	//get random values for the ball location
	CGFloat newX = (CGFloat)RKRand(NSWidth(_animatingView.frame));
	CGFloat newY = (CGFloat)RKRand(NSHeight(_animatingView.frame));
	
	
	[NSAnimationContext beginGrouping];
	//set the duration of the animation
	[[NSAnimationContext currentContext] setDuration:0.5];
	
	//give the animation a nice smooth curve
	[[NSAnimationContext currentContext] setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
	
	//ask the animator proxy to animatie the x and y values to the new ones
	[self.animatingView.animator setX:newX];
	[self.animatingView.animator setY:newY];	
	[NSAnimationContext endGrouping];	
}
@end
