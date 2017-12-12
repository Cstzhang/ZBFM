//
//  ZBTabBarController.m
//  ZBFM
//
//  Created by Mzhangzb on 2017/12/11.
//  Copyright © 2017年 zhangzhengbin. All rights reserved.
//

#import "ZBTabBarController.h"
#import "ZBTabBar.h"
#import "ZBNavigationController.h"
#import "UIImage+ZBImage.h"
#import "ZBMiddleView.h"



@implementation ZBTabBarController
+ (instancetype)shareInstance {
    
    static ZBTabBarController *tabbarC;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tabbarC = [[ZBTabBarController alloc] init];
    });
    return tabbarC;
}

+ (instancetype)tabBarControllerWithAddChildVCsBlock: (void(^)(ZBTabBarController *tabBarC))addVCBlock {
    
    ZBTabBarController *tabbarVC = [[ZBTabBarController alloc] init];
    if (addVCBlock) {
        addVCBlock(tabbarVC);
    }
    
    return tabbarVC;
}


-(void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置tabbar
    [self setUpTabbar];
    
}

- (void)setUpTabbar {
    [self setValue:[[ZBTabBar alloc] init] forKey:@"tabBar"];
}

/**
 *  根据参数, 创建并添加对应的子控制器
 *
 *  @param vc                需要添加的控制器(会自动包装导航控制器)
 *  @param isRequired             标题
 *  @param normalImageName   一般图片名称
 *  @param selectedImageName 选中图片名称
 */
- (void)addChildVC: (UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired {
    
    if (isRequired) {
        ZBNavigationController *nav = [[ZBNavigationController alloc] initWithRootViewController:vc];
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage originImageWithName:normalImageName] selectedImage:[UIImage originImageWithName:selectedImageName]];
        
        [self addChildViewController:nav];
    }else {
        [self addChildViewController:vc];
    }
    
}

- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
    [super setSelectedIndex:selectedIndex];
    
    UIViewController *vc = self.childViewControllers[selectedIndex];
    if (vc.view.tag == 666) {
        vc.view.tag = 888;
        
        ZBMiddleView *middleView = [ZBMiddleView middleView];
        middleView.middleClickBlock = [ZBMiddleView shareInstance].middleClickBlock;
        middleView.isPlaying = [ZBMiddleView shareInstance].isPlaying;
        middleView.middleImg = [ZBMiddleView shareInstance].middleImg;
        CGRect frame = middleView.frame;
        frame.size.width = 65;
        frame.size.height = 65;
        CGSize screenSize = [UIScreen mainScreen].bounds.size;
        frame.origin.x = (screenSize.width - 65) * 0.5;
        frame.origin.y = screenSize.height - 65;
        middleView.frame = frame;
        [vc.view addSubview:middleView];
        
    }
    
    
}

@end
