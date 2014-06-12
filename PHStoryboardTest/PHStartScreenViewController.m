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

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"FromStartToSearch"])
    {
        NSLog(@"%@", self.navigationController.viewControllers);
        PHSearchViewController *loginViewController = (PHSearchViewController *)segue.destinationViewController;
        loginViewController.isPushedWithAutoLogin = YES;
        
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
        PHLoginViewController *loginVC = (PHLoginViewController *)[sb instantiateViewControllerWithIdentifier:@"PHLoginViewController"];
        
        NSMutableArray *viewControllers = [[self.navigationController viewControllers] mutableCopy];
        [viewControllers insertObject:loginVC atIndex:viewControllers.count - 1];
        [self.navigationController setViewControllers:viewControllers];
        
        // NSArray *viewControllers = [self.navigationController viewControllers];
        NSLog(@"%@", self.navigationController.viewControllers);
        //NSArray *newViewControllers = [NSArray arrayWithObjects:[viewControllers objectAtIndex:0], [viewControllers objectAtIndex:1], thirdController,nil];
        //[self.navigationController setViewControllers:newViewControllers];

    }
    else if ([segue.identifier isEqualToString:@"ToLoginWithoutAnimation"])
    {
        PHLoginViewController *loginVC = (PHLoginViewController *)segue.destinationViewController;
        loginVC.isAutoLogin = YES;
    }
}

#pragma mark IBAction

- (IBAction)startScreenUnwindAction:(UIStoryboardSegue *)segue
{
    NSLog(@"current: %@, in stack: %@", self.navigationController.topViewController, self.navigationController.viewControllers);
}

@end
