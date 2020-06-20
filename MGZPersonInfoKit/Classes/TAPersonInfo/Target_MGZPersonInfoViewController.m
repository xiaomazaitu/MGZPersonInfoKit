//
//  Target_MGZPersonInfoViewController.m
//  MGZLearnMTMediatorDemo
//
//  Created by 马广召 on 2020/6/19.
//  Copyright © 2020 xiaoma. All rights reserved.
//

#import "Target_MGZPersonInfoViewController.h"
#import "MGZPersonInfoViewController.h"

@implementation Target_MGZPersonInfoViewController

- (UIViewController *)Action_MGZPersonInfoViewController:(NSDictionary *)param{
    
    MGZPersonInfoViewController * personinfoVC = [[MGZPersonInfoViewController alloc] init];
    personinfoVC.name = [param valueForKey:@"name"];
    personinfoVC.age = ((NSNumber *)[param valueForKey:@"age"]).integerValue;
    return personinfoVC;
    
}

@end
