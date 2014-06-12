//
//  PHSearchViewController.m
//  PHStoryboardTest
//
//  Created by Vladimir Milichenko on 6/12/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "PHSearchViewController.h"
#import "PHLoginViewController.h"

@interface PHSearchViewController ()

@end

@implementation PHSearchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        self.isPushedWithAutoLogin = NO;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    PHLoginViewController *loginVC = (PHLoginViewController *)[sb instantiateViewControllerWithIdentifier:@"PHLoginViewController"];
    
    NSMutableArray *viewControllers = [[self.navigationController viewControllers] mutableCopy];
    [viewControllers insertObject:loginVC atIndex:0];
    [self.navigationController setViewControllers:viewControllers];

    //if (self.isPushedWithAutoLogin)
    {
        NSLog(@"!%@!", self.navigationController.viewControllers);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBarBack"] forBarMetrics:UIBarMetricsDefault];
    
    //[self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.0 green:149.0 / 255.0 blue:179.0 / 255.0 alpha:1.0]];
}

@end
