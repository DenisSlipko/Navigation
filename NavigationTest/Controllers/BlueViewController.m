//
//  BlueViewController.m
//  NavigationTest
//
//  Created by user06 on 24.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backToFirst:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
