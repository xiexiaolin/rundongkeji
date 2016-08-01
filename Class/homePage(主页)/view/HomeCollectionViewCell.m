//
//  HomeCollectionViewCell.m
//  Demo
//
//  Created by 梅启元 on 16/8/1.
//  Copyright © 2016年 薛晓林. All rights reserved.
//

#import "HomeCollectionViewCell.h"

@interface HomeCollectionViewCell()

@property (nonatomic, strong)UIImageView *img;

@end

@implementation HomeCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if ([super initWithFrame:frame]) {
        [self createUI];
    }
    return self;
}

- (void)createUI
{
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.borderWidth = 0.5;
    
    self.img = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    self.img.image = [UIImage imageNamed:@"20131205172458_EMykG.jpg"];
    [self addSubview:self.img];
    
    UIView *informationView = [[UIView alloc]initWithFrame:CGRectMake(0,self.frame.size.height - 15, self.frame.size.width, 15)];
    informationView.backgroundColor = [UIColor whiteColor];
    informationView.alpha = 0.5;
    [self.img addSubview:informationView];
    
    UILabel *browseNumber = [[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.width - 25, self.frame.size.height - 15, 25, 15)];
    browseNumber.backgroundColor = [UIColor clearColor];
    browseNumber.text = @"9999";
    browseNumber.textColor = [UIColor whiteColor];
    browseNumber.font = [UIFont systemFontOfSize:9];
    [self addSubview:browseNumber];
    
    UIImageView *browseImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width - 38, self.frame.size.height - 10, 12, 5)];
    browseImg.image = [UIImage imageNamed:@"eye_16px_583076_easyicon.net"];
    [self addSubview:browseImg];
    
    UILabel *praiseNumber = [[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.width - 65, self.frame.size.height - 15, 25, 15)];
    praiseNumber.backgroundColor = [UIColor clearColor];
    praiseNumber.textColor = [UIColor whiteColor];
    praiseNumber.text = @"9999";
    praiseNumber.font = [UIFont systemFontOfSize:9];
    [self addSubview:praiseNumber];
    
    UIImageView *praiseImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width - 78, self.frame.size.height - 12.5, 10, 10)];
    praiseImg.image = [UIImage imageNamed:@"empty_heart_16px_16623_easyicon.net"];
    [self addSubview:praiseImg];
    
}

@end
