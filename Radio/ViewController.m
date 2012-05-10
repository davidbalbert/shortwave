//
//  ViewController.m
//  Radio
//
//  Created by David Albert on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIButton *button = (UIButton *)sender;
    UIViewController *vc = [segue destinationViewController];
    vc.title = button.titleLabel.text;
    
    NSString *methodName =[[vc.title lowercaseString] stringByAppendingString: @"Color"];
    SEL selector = NSSelectorFromString(methodName);
    vc.view.backgroundColor = [UIColor performSelector:selector];
}

@end
