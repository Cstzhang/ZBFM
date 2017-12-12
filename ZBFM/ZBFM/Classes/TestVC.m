//
//  TestVC.m
//  ZBFM
//
//  Created by Mzhangzb on 2017/12/12.
//  Copyright © 2017年 zhangzhengbin. All rights reserved.
//

#import "TestVC.h"
#import "TestVC2.h"
@interface TestVC ()

@end

@implementation TestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.tag = 666;
    self.view.backgroundColor = [UIColor brownColor];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    NSLog(@"摸到我了");
    static BOOL isPlay = NO;
    isPlay = !isPlay;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"playState" object:@(isPlay)];
    UIImage *image = [UIImage imageNamed:@"zxy_icon"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"playImage" object:image];
    //
    [self.navigationController pushViewController:[TestVC2 new] animated:YES];
    
    
    
}

@end
