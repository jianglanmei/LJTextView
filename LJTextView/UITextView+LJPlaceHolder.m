//
//  UITextView+LJPlaceHolder.m
//  LJTextView
//
//  Created by 123 on 2020/7/2.
//  Copyright © 2020年 123. All rights reserved.
//

#import "UITextView+LJPlaceHolder.h"

@implementation UITextView (LJPlaceHolder)

/**
 placeHolder: 占位符字符串
 color: 占位符字符串的颜色，使用默认颜色传nil
 */
- (void)lj_setPlacePlaceHolder:(NSString *)placeHolder color:(UIColor *)color
{
    // 通过runtime获取UITextView所有的属性和变量
    //    unsigned int count = 0;
    //    Ivar *ivarList = class_copyIvarList(objc_getClass("UITextView"), &count);
    UILabel *label = [UILabel new];;
    label.text = placeHolder;
    label.font = self.font;
    label.textColor = color == nil ? [UIColor lightGrayColor] : color;
    [self addSubview:label];
    // 通过KVC设置占位符
    [self setValue:label forKey:@"_placeholderLabel"];
}

@end
