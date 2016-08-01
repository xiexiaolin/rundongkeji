//
//  BaseViewController.m
//  Demo
//
//  Created by 梅启元 on 16/8/1.
//  Copyright © 2016年 薛晓林. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
//自定义navigation
@property(nonatomic, strong)UIView *naView;
//底部tabBarView
@property (nonatomic, strong)UIView *tabBarView;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = YES;
    self.naView = [[UIView alloc]initWithFrame:CGRectMake(0, 0,__kScreenWidth, 64)];
    self.naView.backgroundColor = [UIColor colorWithRed:150/255.0 green:71/255.0 blue:119/255.0 alpha:1];
    [self.view addSubview:self.naView];
}
//创建底部TabBar
- (void)createTabBarView
{
    self.tabBarView = [[UIView alloc]initWithFrame:CGRectMake(0, __kScreenHeight - 40, __kScreenWidth, 40)];
    self.tabBarView.backgroundColor = [UIColor colorWithRed:56/255.0 green:52/255.0 blue:49/255.0 alpha:1];
    [self.view addSubview:self.tabBarView];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(5 , 10, __kScreenWidth / 3, 20)];
    view.backgroundColor = [UIColor whiteColor];
    view.layer.cornerRadius = 10;
    view.clipsToBounds = YES;
    [self.tabBarView addSubview:view];
    
    UITextField *field = [[UITextField alloc]initWithFrame:CGRectMake(5, 10, __kScreenWidth / 3, 20)];
    field.backgroundColor = [UIColor clearColor];
    field.textColor = [UIColor lightGrayColor];
    field.textAlignment = NSTextAlignmentCenter;
    field.placeholder = @"SEARCH";
    [field setValue:[UIColor lightGrayColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.tabBarView addSubview:field];
}
//添加页面标题
- (void)addTitle:(NSString *)Title
{
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(__kScreenWidth / 2 - 100, 20, 200, 40)];
    lable.backgroundColor = [UIColor clearColor];
    lable.text = Title;
    lable.textColor = [UIColor whiteColor];
    lable.font = [UIFont systemFontOfSize:22];
    lable.textAlignment = NSTextAlignmentCenter;
    [self.naView addSubview:lable];
}
//navigation上添加按钮
- (void)addButton:(UIButton *)button
{
    [self.naView addSubview:button];
}
//添加返回按钮
- (void)addReturnBtnTitle:(NSString *)btnTitle bgImg:(NSString *)bgImg img:(NSString *)img action:(SEL)action
{
    UIButton *returnBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    returnBtn.frame = CGRectMake(5,20, 40,40);
    returnBtn.backgroundColor = [UIColor clearColor];
    [returnBtn setTitle:btnTitle forState:UIControlStateNormal];
    [returnBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [returnBtn setBackgroundImage:[UIImage imageNamed:bgImg] forState:UIControlStateNormal];
    [returnBtn setImage:[UIImage imageNamed:img] forState:UIControlStateNormal];
    [returnBtn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [self.naView addSubview:returnBtn];
}
//改变状态栏的颜色
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
