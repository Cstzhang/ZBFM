//
//  UIImage+ZBImage.h
//  ZBFM
//
//  Created by Mzhangzb on 2017/12/12.
//  Copyright © 2017年 zhangzhengbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZBImage)

/**
 // 始终绘制图片原始状态，不使用Tint Color。
 @param name 图片名称
 @return 返回原始状态图
 */
+ (UIImage *)originImageWithName: (NSString *)name;

/**
圆形图片

 @return 返回圆形 UIImage
 */
- (UIImage *)circleImage;
@end
