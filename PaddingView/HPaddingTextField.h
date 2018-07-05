//
//  HPaddingTextField.h
//  PaddingView
//
//  Created by eric on 2018/7/5.
//  Copyright © 2018年 huangzhifei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HPaddingTextField : UITextField

// 属性 leftView 的 padding，目前只有 left 值起作用
@property (nonatomic, assign) UIEdgeInsets leftViewEdgeInsets;

// 文字的 padding
@property (nonatomic, assign) UIEdgeInsets textEdgeInsets;

// 属性 rightView 的 padding，目前只有 right 值起作用
@property (nonatomic, assign) UIEdgeInsets rightViewEdgeInsets;

@end
