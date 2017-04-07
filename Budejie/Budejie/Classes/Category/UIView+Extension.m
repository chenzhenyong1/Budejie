//
//  UIView+Extension.m
//  Budejie
//
//  Created by 陈振勇 on 2017/4/7.
//  Copyright © 2017年 陈振勇. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setBDJ_height:(CGFloat)BDJ_height
{
    CGRect rect = self.frame;
    rect.size.height = BDJ_height;
    self.frame = rect;
}

- (CGFloat)BDJ_height
{
    return self.frame.size.height;
}

- (CGFloat)BDJ_width
{
    return self.frame.size.width;
}
- (void)setBDJ_width:(CGFloat)BDJ_width
{
    CGRect rect = self.frame;
    rect.size.width = BDJ_width;
    self.frame = rect;
}

- (CGFloat)BDJ_x
{
    return self.frame.origin.x;
    
}

- (void)setBDJ_x:(CGFloat)BDJ_x
{
    CGRect rect = self.frame;
    rect.origin.x = BDJ_x;
    self.frame = rect;
}

- (void)setBDJ_y:(CGFloat)BDJ_y
{
    CGRect rect = self.frame;
    rect.origin.y = BDJ_y;
    self.frame = rect;
}

- (CGFloat)BDJ_y
{
    
    return self.frame.origin.y;
}

@end
