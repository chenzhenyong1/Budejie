//
//  UIImage+Extension.m
//  Budejie
//
//  Created by 陈振勇 on 2017/4/7.
//  Copyright © 2017年 陈振勇. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)imageOriginalWithName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
