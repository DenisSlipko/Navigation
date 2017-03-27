//
//  SecondViewController.m
//  NavigationTest
//
//  Created by Denis Slipko on 22.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewController];
}

- (void)setupViewController {
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Next"
                                                             style:UIBarButtonItemStyleDone
                                                            target:self
                                                            action:@selector(openModalViewController:)];
    self.navigationItem.rightBarButtonItem = item;
}

- (void)openModalViewController:(id)sender {
    [self performSegueWithIdentifier:@"openModalViewController" sender:nil];
}

- (IBAction)ShowThirdVC:(id)sender {
    [self performSegueWithIdentifier:@"ThirdSegue" sender:@"Some title"];
}

- (IBAction)openMVC:(id)sender {
    [self performSegueWithIdentifier:@"MVCSegue" sender:@"Some title"];
}

@end
