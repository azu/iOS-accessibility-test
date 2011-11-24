//
//  ViewController.m
//  accessibility
//
//  Created by azu on 11/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)updateOutlets;

- (void)checkAccessibility;


@end

@implementation ViewController
@synthesize sampleButton;

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
- (void)loadView {
    [super loadView];

}

- (void)updateOutlets {

}

- (void)checkAccessibility {
    NSLog(@"SampleButton\nisAsAccessibilityElement %@\nLabel : %@\nHint  : %@",
            sampleButton.isAccessibilityElement ? @"YES" : @"NO",
            sampleButton.accessibilityLabel, sampleButton.accessibilityHint);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload {
    [self setSampleButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated {
    [self updateOutlets];
    [super viewWillAppear:animated];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)accessibilityOnButton:(id)sender {
    [sampleButton setIsAccessibilityElement:YES];
    sampleButton.accessibilityLabel = @"アクセシビリティボタン";
    sampleButton.accessibilityHint = @"ボタンのヒント";
}

- (IBAction)accessibilityOffButton:(id)sender {
    [sampleButton setIsAccessibilityElement:NO];
}

- (IBAction)checkAccessibilityButton:(id)sender {
    [self checkAccessibility];
}
@end