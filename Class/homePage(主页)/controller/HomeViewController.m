//
//  HomeViewController.m
//  Demo
//
//  Created by 梅启元 on 16/8/1.
//  Copyright © 2016年 薛晓林. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeCollectionViewCell.h"

@interface HomeViewController ()
<
    UICollectionViewDelegate,UICollectionViewDataSource
>

@property (nonatomic, strong)UICollectionView *collectionView;



@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createUI];
}
//创建UI
- (void)createUI
{
    [self addReturnBtnTitle:@"登陆" bgImg:nil img:nil action:@selector(LoginBtnClick:)];
    
    [self createTabBarView];
    
    UIButton *AllBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    AllBtn.frame = CGRectMake(__kScreenWidth - 45, 20, 40, 40);
    AllBtn.backgroundColor = [UIColor clearColor];
    [AllBtn setTitle:@"所有" forState:UIControlStateNormal];
    [AllBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [AllBtn addTarget:self action:@selector(AllBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addButton:AllBtn];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    layout.minimumInteritemSpacing = 0;
    
    layout.minimumLineSpacing = 0;
    
    //    layout.headerReferenceSize = CGSizeMake(__kScreenWidth, 30);
    
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    
    layout.itemSize = CGSizeMake(__kScreenWidth / 3, __kScreenWidth / 3);
    
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 64, __kScreenWidth, __kScreenHeight - 104) collectionViewLayout:layout];
    
    self.collectionView.delegate = self;
    
    self.collectionView.dataSource = self;
    
    self.collectionView.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self.collectionView];
    
    [self.collectionView  registerClass:[HomeCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
}
#define mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    return cell;
}

//点击登录按钮
- (void)LoginBtnClick:(UIButton *)button
{
    NSLog(@"点击了登录");
}
//点击所有按钮
- (void)AllBtnClick:(UIButton *)btn
{
    NSLog(@"点击了所有");
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
