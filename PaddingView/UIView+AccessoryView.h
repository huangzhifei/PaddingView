//
//  UIView+AccessoryView.h
//  FormaxInsurance
//
//  Created by eric on 2017/6/29.
//  Copyright © 2017年 Formax. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AccessoryView)

+ (instancetype)fmi_createInputAccessoryViewWithCompletion:(void (^)(void))completion;

@end
