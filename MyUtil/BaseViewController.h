//
//  BaseViewController.h
//  Demo
//
//  Created by 梅启元 on 16/8/1.
//  Copyright © 2016年 薛晓林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

//添加中间标题
- (void)addTitle:(NSString *)Title;
//添加按钮
- (void)addButton:(UIButton *)button;
//添加返回按钮
- (void)addReturnBtnTitle:(NSString *)btnTitle bgImg:(NSString *)bgImg img: (NSString *)img action:(SEL)action;
//添加底部View
- (void)createTabBarView;

@end
