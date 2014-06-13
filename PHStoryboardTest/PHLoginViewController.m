//
//  PHLoginViewController.m
//  PHStoryboardTest
//
//  Created by Vladimir Milichenko on 6/10/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "PHLoginViewController.h"
#import "PHSearchViewController.h"

@interface PHLoginViewController ()

@end

@implementation PHLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)loginUnwindAction:(UIStoryboardSegue *)segue
{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    
    NSLog(@"current: %@, in stack: %@", self.navigationController.topViewController, self.navigationController.viewControllers);
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    textField.layer.borderWidth = 0.0f;
    [textField resignFirstResponder];
    
    return YES;
}


@end
