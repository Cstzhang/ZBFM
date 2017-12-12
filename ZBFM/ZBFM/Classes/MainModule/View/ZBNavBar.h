//
//  ZBNavBar.h
//  ZBFM
//
//  Created by Mzhangzb on 2017/12/11.
//  Copyright © 2017年 zhangzhengbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBNavBar : UINavigationBar
/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setGlobalBackGroundImage: (UIImage *)globalImg;
/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize;
@end
