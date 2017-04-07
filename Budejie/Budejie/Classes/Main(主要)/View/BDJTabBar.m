//
//  BDJTabBar.m
//  Budejie
//
//  Created by 陈振勇 on 2017/4/7.
//  Copyright © 2017年 陈振勇. All rights reserved.
//

#import "BDJTabBar.h"

@interface BDJTabBar ()

/** 加号按钮 */
@property (nonatomic, weak) UIButton *plusButton;

@end

@implementation BDJTabBar

-(UIButton *)plusButton
{
    if (!_plusButton) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [btn sizeToFit];
        [self addSubview:btn];
        
        _plusButton = btn;
    }
    return _plusButton;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    NSInteger count = self.items.count + 1;
    CGFloat btnW = self.bounds.size.width / count;
    CGFloat btnH = self.bounds.size.height;
    int i = 0;
    //遍历子控件,调整布局
    for (UIView *tabBarButton in self.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            
            if (i == 2) {
                i += 1;
            }
            
            tabBarButton.frame = CGRectMake(i * btnW, 0, btnW, btnH);
            
            i ++;
            
        }
    }
    
    self.plusButton.center = CGPointMake(self.BDJ_width * 0.5, self.BDJ_height * 0.5);
}

@end
