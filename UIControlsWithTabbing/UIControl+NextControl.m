//
//  UIControl+NextControl.m
//  UIControlsWithTabbing
//
//  Created by Anthony Picciano on 6/18/14.
//  Copyright (c) 2014 Anthony Picciano. All rights reserved.
//

#import "UIControl+NextControl.h"
#import <objc/runtime.h>

static char defaultHashKey;

@implementation UIControl (NextControl)

- (UIControl *)nextControl
{
    return objc_getAssociatedObject(self, &defaultHashKey);
}

- (void)setNextControl:(UIControl *)nextControl
{
    objc_setAssociatedObject(self, &defaultHashKey, nextControl, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)transferFirstResponderToNextControl
{
    if (self.nextControl)
    {
        [self.nextControl becomeFirstResponder];
        
        return YES;
    }
    
    [self resignFirstResponder];
    
    return NO;
}

@end
