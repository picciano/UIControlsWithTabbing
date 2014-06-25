//
//  UIControl+NextControl.h
//  UIControlsWithTabbing
//
//  Created by Anthony Picciano on 6/18/14.
//  Copyright (c) 2014 Anthony Picciano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (NextControl)

@property (nonatomic, weak) IBOutlet UIControl *nextControl;

- (BOOL)transferFirstResponderToNextControl;

@end
