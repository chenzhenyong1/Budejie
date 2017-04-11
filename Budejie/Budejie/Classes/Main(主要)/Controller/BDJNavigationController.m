//
//  BDJNavigationController.m
//  Budejie
//
//  Created by 陈振勇 on 2017/4/11.
//  Copyright © 2017年 陈振勇. All rights reserved.
//

#import "BDJNavigationController.h"
#import "UIBarButtonItem+Extension.h"

@interface BDJNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation BDJNavigationController

+ (void)load
{
    //设置导航条标题字体
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    navBar.titleTextAttributes = attrs;
    //设置导航条背景图片
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.interactivePopGestureRecognizer.enabled = NO;
    // <UIScreenEdgePanGestureRecognizer: 0x7faa3ef0b540; state = Possible; delaysTouchesBegan = YES; view = <UILayoutContainerView 0x7faa3ed0dfc0>; target= <(action=handleNavigationTransition:, target=<_UINavigationInteractiveTransition 0x7faa3ef0b400>)>>
//    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] in];
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    
    pan.delegate = self;
    
    [self.view addGestureRecognizer:pan];
    
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturnClick"] target:self action:@selector(back) title:@"返回"];
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return self.childViewControllers.count > 1;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
