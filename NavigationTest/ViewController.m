//
//  ViewController.m
//  NavigationTest
//
//  Created by Denis Slipko on 22.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import "ViewController.h"
#import "XibViewController.h"

@interface ViewController ()

@property (nonatomic,strong) XibViewController* xibControllerProperty;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ASShowSecondVC:(id)sender {
   [self performSegueWithIdentifier:@"ASSecondSegue" sender:@"Some title"];
}

- (void)showFromXIB {
    XibViewController *xibController = [[XibViewController alloc] initWithNibName:@"XibViewController" bundle:nil];
    xibController.title = @"My Some Perfect title";
    [self.navigationController pushViewController:xibController animated:YES];
}

- (IBAction)OpenXibController:(id)sender {
    [self showFromXIB];
}
- (IBAction)OpenAnotherSB:(id)sender {
    NSString * storyboardName = @"AnotherStoryboard";
    NSString * viewControllerID = @"ViewControllerAS";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    ViewController * controller = (ViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction)backToFirstBG:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)backToFirst:(id)sender {
    [self backToFirstBG:sender];
}


@end
