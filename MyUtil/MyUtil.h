//
//  MyUtil.h
//  Demo
//
//  Created by 梅启元 on 16/8/1.
//  Copyright © 2016年 薛晓林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MyUtil : NSObject

+ (UIButton *)createButtonFrame:(CGRect)frame
                        bgColor:(UIColor *)bgColor
                          title:(NSString *)title
                     titleColor:(UIColor *)titleColor
                        bgImage:(NSString *)bgImage
               bgHighlightImage:(NSString *)bgHighlightImage
                  bgSelectImage:(NSString *)bgSelectImage
                          image:(NSString *)image
                 highlightImage:(NSString *)highlightImage
                    selectImage:(NSString *)selectImage
                         target:(id)target
                         action:(SEL)action;

+ (UILabel *)createLabelFrame:(CGRect)frame
                      bgColor:(UIColor *)bgColor
                        title:(NSString *)title
                    textColor:(UIColor *)textColor
                         font:(CGFloat)font
                textAlignment:(NSTextAlignment)textAlignment;

+ (UIImageView *)createImageViewFrame:(CGRect)frame
                                image:(NSString *)image;


+ (UIButton *)            createBgColor:(UIColor *)bgColor
                                  title:(NSString *)title
                             titleColor:(UIColor *)titleColor
                                bgImage:(NSString *)bgImage
                       bgHighlightImage:(NSString *)bgHighlightImage
                          bgSelectImage:(NSString *)bgSelectImage
                                  image:(NSString *)image
                         highlightImage:(NSString *)highlightImage
                            selectImage:(NSString *)selectImage
                                 target:(id)target
                                 action:(SEL)action;

+ (UILabel *)           createBgColor:(UIColor *)bgColor
                                title:(NSString *)title
                            textColor:(UIColor *)textColor
                                 font:(CGFloat)font
                        textAlignment:(NSTextAlignment)textAlignment;

+ (UIImageView *)createImage:(NSString *)image;

//+ (UIImageView *)createLoadingAnimation;

//客户端提示信息
+ (void)alert:(NSString *)title msg:(NSString *)msg;

@end
