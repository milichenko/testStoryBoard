//
//  PHStartScreenViewController.m
//  PHStoryboardTest
//
//  Created by Vladimir Milichenko on 6/10/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "PHStartScreenViewController.h"
#import "PHSearchViewController.h"
#import "PHLoginViewController.h"

@interface PHStartScreenViewController ()

@end

@implementation PHStartScreenViewController

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
    
    self.navigationController.navigationBar.shadowImage = [UIImage new];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}

#pragma mark IBAction

- (IBAction)startScreenUnwindAction:(UIStoryboardSegue *)segue
{
    NSLog(@"current: %@, in stack: %@", self.navigationController.topViewController, self.navigationController.viewControllers);
}

- (IBAction)autoLoginAction:(id)sender
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    
    PHLoginViewController *loginViewController = [storyBoard instantiateViewControllerWithIdentifier:@"PHLoginViewController"];
    PHSearchViewController *searchViewController = [storyBoard instantiateViewControllerWithIdentifier:@"PHSearchViewController"];
    
    [self.navigationController pushViewController:loginViewController animated:NO];
    [self.navigationController pushViewController:searchViewController animated:YES];
}

@end
