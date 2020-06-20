//
//  MGZPersonInfoViewController.m
//  MGZLearnMTMediatorDemo
//
//  Created by 马广召 on 2020/6/19.
//  Copyright © 2020 xiaoma. All rights reserved.
//
#define WGWidth [UIScreen mainScreen].bounds.size.width

#import "MGZPersonInfoViewController.h"
//#import "CTMediator+TAPersonPrefrence.h"
#import <MGZPersonPrefrenceCategoryKit/CTMediator+TAPersonPrefrence.h>
//#import "MGZPersonPrefrenceViewController.h"

@interface MGZPersonInfoViewController ()
@property (nonatomic, strong)UIButton * likeBtn;
@property (nonatomic, strong)UILabel * displayLab;
@end

@implementation MGZPersonInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.displayLab];
    [self.view addSubview:self.likeBtn];
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.displayLab.text = [NSString stringWithFormat:@"%@今年%ld岁，是个高富帅",self.name,self.age];
}

- (void)btnClick{
//    __weak typeof(self) weakSelf = self;
//    MGZPersonPrefrenceViewController * vc = [[MGZPersonPrefrenceViewController alloc] init];
//    vc.remind = @"希望您能喜欢我";
//    vc.myBlock = ^(BOOL islike) {
//        if (islike) {
//            [weakSelf.likeBtn setTitle:@"对方喜欢你" forState:UIControlStateNormal];
//            weakSelf.likeBtn.backgroundColor = [UIColor cyanColor];
//        }else{
//            [weakSelf.likeBtn setTitle:@"对方讨厌你" forState:UIControlStateNormal];
//            weakSelf.likeBtn.backgroundColor = [UIColor redColor];
//        }
//    };
//    [self.navigationController pushViewController:vc animated:NO];
    
    __weak typeof(self) weakSelf = self;
    
    UIViewController * vc = [[CTMediator sharedInstance] personPreferenceWithRemind:@"希望大家喜欢我" resultBlock:^(BOOL isLike) {
        if (isLike) {
            [weakSelf.likeBtn setTitle:@"对方喜欢你" forState:UIControlStateNormal];
            weakSelf.likeBtn.backgroundColor = [UIColor cyanColor];
        }else{
            [weakSelf.likeBtn setTitle:@"对方讨厌你" forState:UIControlStateNormal];
            weakSelf.likeBtn.backgroundColor = [UIColor redColor];
        }
    }];
    
    [self.navigationController pushViewController:vc animated:NO];
}

- (UILabel *)displayLab{
    if (!_displayLab) {
        _displayLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, WGWidth, 100)];
        _displayLab.textColor = [UIColor blackColor];
        _displayLab.textAlignment = NSTextAlignmentCenter;
        _displayLab.backgroundColor = [UIColor yellowColor];
    }
    return _displayLab;
}

- (UIButton *)likeBtn{
    if (!_likeBtn) {
        _likeBtn = [[UIButton alloc] initWithFrame:CGRectMake((WGWidth-100)*0.5, 220, 100, 40)];
        [_likeBtn setTitle:@"开始打分" forState:UIControlStateNormal];
        [_likeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_likeBtn setBackgroundColor:[UIColor yellowColor]];
        [_likeBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _likeBtn;
}


@end
