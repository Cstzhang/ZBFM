//
//  UIView+ZBLayout.h
//  ZBFM
//
//  Created by Mzhangzb on 2017/12/12.
//  Copyright © 2017年 zhangzhengbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZBLayout)

/**
 frame origin x
 */
@property (nonatomic, assign) CGFloat x;

/**
  frame origin y
 */
@property (nonatomic, assign) CGFloat y;

/**
 frame width
 */
@property (nonatomic, assign) CGFloat width;

/**
 frame height
 */
@property (nonatomic, assign) CGFloat height;

/**
 center X 
 */
@property (nonatomic, assign) CGFloat centerX;

/**
 center y
 */
@property (nonatomic, assign) CGFloat centerY;

@end
