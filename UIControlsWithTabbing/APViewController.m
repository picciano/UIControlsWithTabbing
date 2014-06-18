//
//  APViewController.m
//  UIControlsWithTabbing
//
//  Created by Anthony Picciano on 6/18/14.
//  Copyright (c) 2014 Anthony Picciano. All rights reserved.
//

#import "APViewController.h"
#import "UIControl+NextControl.h"

@interface APViewController ()

@property (nonatomic, weak) IBOutlet UITextField *firstNameField;

@end

@implementation APViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.firstNameField becomeFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField transferFirstReponderToNextControl];
    return NO;
}

@end
