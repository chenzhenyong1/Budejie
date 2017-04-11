//
//  BDJEssenceViewController.m
//  Budejie
//
//  Created by 陈振勇 on 2017/4/10.
//  Copyright © 2017年 陈振勇. All rights reserved.
//

#import "BDJEssenceViewController.h"
#import "UIBarButtonItem+Extension.h"

@interface BDJEssenceViewController ()

@end

@implementation BDJEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] target:self action:@selector(leftBarButtonClick)];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] target:self action:@selector(rightBarButtonClick)];

    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}

#pragma mark - 导航栏按钮点击
- (void)leftBarButtonClick
{
    BDJFunc
}

- (void)rightBarButtonClick
{
    BDJFunc
}

@end
