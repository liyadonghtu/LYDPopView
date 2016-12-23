//
//  LYDPopMenu.h
//  DIYPopView
//
//  Created by 李亚东 on 2016/12/19.
//  Copyright © 2016年 李亚东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LYDMenuItem : NSObject

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, weak) id target;
@property (nonatomic, assign) SEL action;
@property (nonatomic, strong) UIColor *foreColor;
@property (nonatomic, assign) NSTextAlignment alignment;

+ (instancetype) menuItem:(NSString *) title
                    image:(UIImage *) image
                   target:(id)target
                   action:(SEL) action;

@end



@interface LYDPopMenu : NSObject

+ (void)showMenuInView:(UIView *)view
               fromRect:(CGRect)rect
              menuItems:(NSArray *)menuItems;


+ (void)setTintColor:(UIColor *)tintColor;

+ (void)setTitleFont:(UIFont *)titleFont;

+ (void)setCornerRadious:(CGFloat)cornerRadious;

@end
