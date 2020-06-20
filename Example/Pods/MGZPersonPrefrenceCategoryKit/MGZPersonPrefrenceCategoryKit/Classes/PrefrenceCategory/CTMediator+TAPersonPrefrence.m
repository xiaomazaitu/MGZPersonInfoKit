//
//  CTMediator+TAPersonPrefrence.m
//  MGZLearnMTMediatorDemo
//
//  Created by 马广召 on 2020/6/19.
//  Copyright © 2020 xiaoma. All rights reserved.
//

#import "CTMediator+TAPersonPrefrence.h"

//#import <AppKit/AppKit.h>


@implementation CTMediator (TAPersonPrefrence)

- (UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(ResultBlock)block{
    
    NSMutableDictionary * dic = [NSMutableDictionary dictionary];
    [dic setValue:remind forKey:@"remind"];
    [dic setValue:block forKey:@"myBlock"];
    
    return [self performTarget:@"MGZPersonPrefrenceViewController" action:@"MGZPersonPrefrenceViewController" params:dic shouldCacheTarget:NO];
    
}

@end
