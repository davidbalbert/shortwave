//
//  StateViewController.h
//  Radio
//
//  Created by David Albert on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StateViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *bigLabel;
@property (nonatomic, strong) IBOutlet NSString *state;

@end
