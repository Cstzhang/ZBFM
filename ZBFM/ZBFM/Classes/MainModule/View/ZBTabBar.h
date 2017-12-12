//
//  ZBTabBar.h
//  ZBFM
//
//  Created by Mzhangzb on 2017/12/11.
//  Copyright © 2017年 zhangzhengbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBTabBar : UITabBar
/**
 点击中间按钮的执行代码块
 */
@property (nonatomic, copy) void(^middleClickBlock)(BOOL isPlaying);
@end
