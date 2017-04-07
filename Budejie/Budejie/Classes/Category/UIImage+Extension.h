//
//  UIImage+Extension.h
//  Budejie
//
//  Created by 陈振勇 on 2017/4/7.
//  Copyright © 2017年 陈振勇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 获取没有被渲染的图片

 @param imageName 图片名
 @return 返回没有被渲染的图片
 */
+ (UIImage *)imageOriginalWithName:(NSString *)imageName;

@end
