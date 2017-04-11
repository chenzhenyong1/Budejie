//
//  BDJFriendTrendViewController.m
//  Budejie
//
//  Created by 陈振勇 on 2017/4/10.
//  Copyright © 2017年 陈振勇. All rights reserved.
//

#import "BDJFriendTrendViewController.h"
#import "UIBarButtonItem+Extension.h"

@interface BDJFriendTrendViewController ()

@end

@implementation BDJFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(leftBarButtonClick)];
    
    self.navigationItem.title = @"我的关注";
}

#pragma mark - 导航栏按钮点击
- (void)leftBarButtonClick
{
    BDJFunc
}
@end
