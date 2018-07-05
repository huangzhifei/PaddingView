//
//  HPaddingTextField.m
//  PaddingView
//
//  Created by eric on 2018/7/5.
//  Copyright © 2018年 huangzhifei. All rights reserved.
//

#import "HPaddingTextField.h"

@implementation HPaddingTextField

- (instancetype)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    _leftViewEdgeInsets = UIEdgeInsetsZero;
    _textEdgeInsets = UIEdgeInsetsZero;
    _rightViewEdgeInsets = UIEdgeInsetsZero;
    self.borderStyle = UITextBorderStyleRoundedRect;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds {
    CGRect iconRect = [super leftViewRectForBounds:bounds];
    iconRect.origin.x += self.leftViewEdgeInsets.left;
    return iconRect;
}

- (CGRect)textRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect(bounds, self.textEdgeInsets);
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect(bounds, self.textEdgeInsets);
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect(bounds, self.textEdgeInsets);
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds {
    CGRect iconRect = [super rightViewRectForBounds:bounds];
    iconRect.origin.x -= self.rightViewEdgeInsets.right;
    return iconRect;
}

@end
