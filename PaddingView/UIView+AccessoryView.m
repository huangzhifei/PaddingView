//
//  UIView+AccessoryView.m
//  FormaxInsurance
//
//  Created by eric on 2017/6/29.
//  Copyright © 2017年 Formax. All rights reserved.
//

#import "UIView+AccessoryView.h"
#import <objc/runtime.h>

static const int block_key;

@implementation UIView (AccessoryView)

+ (instancetype)fmi_createInputAccessoryViewWithCompletion:(void (^)(void))completion {
    UIView *topLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 0.5)];
    topLine.backgroundColor = [UIColor lightGrayColor];
    UIView *input = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
    input.backgroundColor = [UIColor whiteColor];
    UIButton *doneBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [doneBtn setTitle:@"完成" forState:UIControlStateNormal];
    doneBtn.titleLabel.font = [UIFont systemFontOfSize:16.0f];
    [doneBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [doneBtn addTarget:input action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    doneBtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 55, 0, 50, 43.5);
    [input addSubview:topLine];
    [input addSubview:doneBtn];
    objc_setAssociatedObject(input, &block_key, completion, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return input;
}

- (void)onClick:(UIButton *)sender {
    void (^actionBlock)(void) = objc_getAssociatedObject(self, &block_key);
    if (actionBlock) {
        actionBlock();
    }
}

@end
