//
//  RKAppDelegate.h
//  perspective
//
//  Created by Rob Keniger on 25/05/12.
//  Copyright (c) 2012 Big Bang Software Pty Ltd. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class RKAnimatingView;

@interface RKAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (strong) IBOutlet RKAnimatingView *animatingView;
- (IBAction)animate:(id)sender;

@end
