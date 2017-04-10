//
//  BDJTabBarController.m
//  Budejie
//
//  Created by 陈振勇 on 2017/4/7.
//  Copyright © 2017年 陈振勇. All rights reserved.
//

#import "BDJTabBarController.h"
#import "UIImage+Extension.h"
#import "BDJTabBar.h"

#import "BDJEssenceViewController.h"
#import "BDJFriendTrendViewController.h"
#import "BDJNewViewController.h"
#import "BDJMeViewController.h"

@interface BDJTabBarController ()

@end

@implementation BDJTabBarController

+ (void)load
{
    UITabBarItem *tabBarItem = [UITabBarItem appearanceWhenContainedIn:self, nil];
    
    /**
        1.解决按钮选中标题的颜色:为黑色 (用富文本解决)
        2.解决标题字体过小(是有在正常状态下设置才有效果)
     
     */
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    [tabBarItem setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    NSMutableDictionary *attrsNormal = [NSMutableDictionary dictionary];
    attrsNormal[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    [tabBarItem setTitleTextAttributes:attrsNormal forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     1.添加子控制器
     2.设置子控制器的tabBarItem
     */
    [self AddChildViewControllers];
    
    //自定义tabBar
    [self setupTabBar];
}

#pragma mark - 自定义tabBar

- (void)setupTabBar
{
    BDJTabBar *tabBar = [[BDJTabBar alloc] init];

    [self setValue:tabBar forKey:@"tabBar"];
}

#pragma mark - 添加所有的子控制器

- (void)AddChildViewControllers
{
    // 精华
    BDJEssenceViewController *essenceVC = [BDJEssenceViewController new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:essenceVC];
    [self setupChildVCTabBarItemWithVC:nav imageName:@"tabBar_essence_icon" selectedImageName:@"tabBar_essence_click_icon" title:@"精华"];
    [self addChildViewController:nav];
    
    // 新帖
    BDJNewViewController *newVC = [BDJNewViewController new];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:newVC];
    [self setupChildVCTabBarItemWithVC:nav1 imageName:@"tabBar_new_icon" selectedImageName:@"tabBar_new_click_icon" title:@"新帖"];
    [self addChildViewController:nav1];
    
    
    // 关注
    BDJFriendTrendViewController *friendTrendVC = [BDJFriendTrendViewController new];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:friendTrendVC];
    [self setupChildVCTabBarItemWithVC:nav3 imageName:@"tabBar_friendTrends_icon" selectedImageName:@"tabBar_friendTrends_click_icon" title:@"关注"];
    [self addChildViewController:nav3];
    
    // 我
    BDJMeViewController *meVC = [BDJMeViewController new];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:meVC];
    [self setupChildVCTabBarItemWithVC:nav4 imageName:@"tabBar_me_icon" selectedImageName:@"tabBar_me_click_icon" title:@"我"];
    [self addChildViewController:nav4];

}

/**
 设置子控制器的tabBarItem

 @param ctl 添加的子控制器
 @param imageName tabBarItem.image图片名
 @param selectedImageName tabBarItem.selectedImage选中图片名
 @param title 标题
 */
- (void)setupChildVCTabBarItemWithVC:(UIViewController *)ctl imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title
{

    ctl.tabBarItem.title = title;
    ctl.tabBarItem.image = [UIImage imageOriginalWithName:imageName];
    ctl.tabBarItem.selectedImage = [UIImage imageOriginalWithName:selectedImageName];
    
}

@end
