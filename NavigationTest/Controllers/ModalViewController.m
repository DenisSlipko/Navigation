//
//  ModalViewController.m
//  NavigationTest
//
//  Created by Denis Slipko on 22.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)dismissAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
