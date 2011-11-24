//
//  ViewController.h
//  accessibility
//
//  Created by azu on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)accessibilityOnButton:(id)sender;

- (IBAction)accessibilityOffButton:(id)sender;
// ボタンRoleのアクション
- (IBAction)checkAccessibilityButton:(id)sender;
// ボタンRoleのoutlets
@property(weak, nonatomic) IBOutlet UIButton *sampleButton;

@end