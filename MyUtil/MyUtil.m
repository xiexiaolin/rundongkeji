
//
//  MyUtil.m
//  Demo
//
//  Created by 梅启元 on 16/8/1.
//  Copyright © 2016年 薛晓林. All rights reserved.
//

#import "MyUtil.h"

@implementation MyUtil

+ (UIButton *)createButtonFrame:(CGRect)frame bgColor:(UIColor *)bgColor title:(NSString *)title titleColor:(UIColor *)titleColor bgImage:(NSString *)bgImage bgHighlightImage:(NSString *)bgHighlightImage bgSelectImage:(NSString *)bgSelectImage image:(NSString *)image highlightImage:(NSString *)highlightImage selectImage:(NSString *)selectImage target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    btn.backgroundColor = bgColor;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:bgImage] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:bgHighlightImage] forState:UIControlStateHighlighted];
    [btn setBackgroundImage:[UIImage imageNamed:bgSelectImage] forState:UIControlStateSelected];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highlightImage] forState:UIControlStateHighlighted];
    [btn setImage:[UIImage imageNamed:selectImage] forState:UIControlStateSelected];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UILabel *)createLabelFrame:(CGRect)frame bgColor:(UIColor *)bgColor title:(NSString *)title textColor:(UIColor *)textColor font:(CGFloat)font textAlignment:(NSTextAlignment)textAlignment
{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.backgroundColor = bgColor;
    label.text = title;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:font];
    label.textAlignment =textAlignment;
    return label;
}

+ (UIImageView *)createImageViewFrame:(CGRect)frame image:(NSString *)image
{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = [UIImage imageNamed:image];
    return imageView;
}


+ (UIButton *)createBgColor:(UIColor *)bgColor title:(NSString *)title titleColor:(UIColor *)titleColor bgImage:(NSString *)bgImage bgHighlightImage:(NSString *)bgHighlightImage bgSelectImage:(NSString *)bgSelectImage image:(NSString *)image highlightImage:(NSString *)highlightImage selectImage:(NSString *)selectImage target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = bgColor;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:bgImage] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:bgHighlightImage] forState:UIControlStateHighlighted];
    [btn setBackgroundImage:[UIImage imageNamed:bgSelectImage] forState:UIControlStateSelected];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highlightImage] forState:UIControlStateHighlighted];
    [btn setImage:[UIImage imageNamed:selectImage] forState:UIControlStateSelected];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UILabel *)createBgColor:(UIColor *)bgColor title:(NSString *)title textColor:(UIColor *)textColor font:(CGFloat)font textAlignment:(NSTextAlignment)textAlignment
{
    UILabel *label = [[UILabel alloc]init];
    label.backgroundColor = bgColor;
    label.text = title;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:font];
    label.textAlignment =textAlignment;
    return label;
}

+ (UIImageView *)createImage:(NSString *)image
{
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:image];
    return imageView;
}


//客户端提示信息
+ (void)alert:(NSString *)title msg:(NSString *)msg
{
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alter show];
}

@end
