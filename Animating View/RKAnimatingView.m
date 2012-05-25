//
//  RKAnimatingView.m
//  perspective
//
//  Created by Rob Keniger on 25/05/12.
//  Copyright (c) 2012 Big Bang Software Pty Ltd. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>

#import "RKAnimatingView.h"

#define BALL_RADIUS 10.0

@implementation RKAnimatingView
@synthesize x,y;

//declare the default animations for any keys we want to animate
+ (id)defaultAnimationForKey:(NSString *)key
{
	//in this case, we want to add animation for our x and y keys
    if ([key isEqualToString:@"x"] || [key isEqualToString:@"y"]) {
        return [CABasicAnimation animation];
    } else {
        // Defer to super's implementation for any keys we don't specifically handle.
        return [super defaultAnimationForKey:key];
    }
}

//set the default position of the ball to the center of the view
- (void)awakeFromNib
{
	self.x = NSMidX(self.bounds);
	self.y = NSMidY(self.bounds);
}

- (void)drawRect:(NSRect)dirtyRect
{
	//draw a black background
	[[NSColor blackColor] setFill];
	NSRectFill(self.bounds);
	
	//calculate the rectangle for the ball based on the current x and y values, then draw it
	NSRect ballRect = NSMakeRect(x - BALL_RADIUS, y - BALL_RADIUS, BALL_RADIUS * 2.0, BALL_RADIUS * 2.0);
	NSBezierPath* ball = [NSBezierPath bezierPathWithOvalInRect:ballRect];
	[[NSColor colorWithDeviceWhite:0.8 alpha:1.0] setFill];
	[ball fill];
}

//when we change the x and y values, we must redraw the view.
- (void)setX:(CGFloat)xValue
{
	x = xValue;
	[self setNeedsDisplay:YES];
}

- (void)setY:(CGFloat)yValue
{
	y = yValue;
	[self setNeedsDisplay:YES];
}

//this increases drawing performance slightly because the view has no transparent sections
- (BOOL)isOpaque
{
	return YES;
}

@end
