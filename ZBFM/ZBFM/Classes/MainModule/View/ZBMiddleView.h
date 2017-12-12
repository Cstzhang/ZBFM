//
//  ZBMiddleView.h
//  ZBFM
//
//  Created by Mzhangzb on 2017/12/12.
//  Copyright © 2017年 zhangzhengbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBMiddleView : UIView

+ (instancetype)shareInstance;

/**
 快速创建中间视图
 
 @return 中间的视图
 */
+ (instancetype)middleView;

/**
 控制是否正在播放
 */
@property (nonatomic, assign) BOOL isPlaying;

/**
 中间图片
 */
@property (nonatomic, strong) UIImage *middleImg;

/**
 点击中间按钮的执行代码块
 */
@property (nonatomic, copy) void(^middleClickBlock)(BOOL isPlaying);
@end
