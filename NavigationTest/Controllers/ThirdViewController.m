//
//  ThirdViewController.m
//  NavigationTest
//
//  Created by Denis Slipko on 22.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import "ThirdViewController.h"
#import "ViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)BackToFirstMVC:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)openXibVC:(id)sender {
    [self showFromXIB];
}

@end
