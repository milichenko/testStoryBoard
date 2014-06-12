//
//  PHPushNoAnimationSegue.m
//  PHStoryboardTest
//
//  Created by Vladimir Milichenko on 6/12/14.
//  Copyright (c) 2014 massinteractiveserviceslimited. All rights reserved.
//

#import "PHPushNoAnimationSegue.h"

@implementation PHPushNoAnimationSegue

- (void)perform
{
    [[self.sourceViewController navigationController] pushViewController:self.destinationViewController animated:NO];
}

@end
