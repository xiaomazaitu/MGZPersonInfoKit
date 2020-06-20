//
//  CTMediator+TAPersonPrefrence.h
//  MGZLearnMTMediatorDemo
//
//  Created by 马广召 on 2020/6/19.
//  Copyright © 2020 xiaoma. All rights reserved.
//

//#import <AppKit/AppKit.h>


//#import "CTMediator.h"
#import <CTMediator/CTMediator.h>

typedef void(^ResultBlock)(BOOL isLike);

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (TAPersonPrefrence)

- (UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(ResultBlock)block;

@end

NS_ASSUME_NONNULL_END
