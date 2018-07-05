//
//  ViewController.m
//  PaddingView
//
//  Created by eric on 2018/7/5.
//  Copyright © 2018年 huangzhifei. All rights reserved.
//

#import "ViewController.h"
#import "HPaddingLabel.h"
#import "HPaddingTextField.h"
#import "UIView+AccessoryView.h"
#import "UIView+shake.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HPaddingLabel *paddingLabel = [[HPaddingLabel alloc] init];
    paddingLabel.text = @"我是一个带有padding的label";
    paddingLabel.textColor = [UIColor blackColor];
    paddingLabel.frame = CGRectMake(50, 80, 280, 40);
    paddingLabel.backgroundColor = [UIColor orangeColor];
    paddingLabel.edgeInsets = UIEdgeInsetsMake(-5, 10, -5, -10);
    [self.view addSubview:paddingLabel];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    HPaddingTextField *textField0 = [[HPaddingTextField alloc] initWithFrame:CGRectMake(50, 150, 300, 30)];
    textField0.placeholder = @"我是输入框0";
    [self.view addSubview:textField0];
    __weak typeof(self)weakSelf = self;
    textField0.inputAccessoryView = [UIView fmi_createInputAccessoryViewWithCompletion:^{
        [weakSelf.view endEditing:YES];
    }];
    
    HPaddingTextField *textField1 = [[HPaddingTextField alloc] initWithFrame:CGRectMake(50, 200, 300, 30)];
    textField1.placeholder = @"我是输入框1";
    textField1.textEdgeInsets = UIEdgeInsetsMake(0, 40, 0, 20);
    textField1.leftView = [[UIView alloc] initWithFrame:CGRectMake(10, 0, 20, 20)];
    textField1.leftView.backgroundColor = [UIColor blackColor];
    textField1.leftViewEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
    textField1.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:textField1];
    textField1.inputAccessoryView = [UIView fmi_createInputAccessoryViewWithCompletion:^{
        [weakSelf.view endEditing:YES];
    }];
    
    HPaddingTextField *textField2 = [[HPaddingTextField alloc] initWithFrame:CGRectMake(50, 300, 300, 30)];
    textField2.placeholder = @"我是输入框2";
    textField2.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    textField2.leftView.backgroundColor = [UIColor greenColor];
    textField2.leftViewEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
    textField2.textEdgeInsets = UIEdgeInsetsMake(0, 40, 0, 10);
    textField2.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:textField2];
    textField2.inputAccessoryView = [UIView fmi_createInputAccessoryViewWithCompletion:^{
        [weakSelf.view endEditing:YES];
    }];
    
    HPaddingTextField *textField3 = [[HPaddingTextField alloc] initWithFrame:CGRectMake(50, 400, 300, 30)];
    textField3.placeholder = @"我是输入框3";
    textField3.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    textField3.leftView.backgroundColor = [UIColor greenColor];
    textField3.leftViewEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
    textField3.textEdgeInsets = UIEdgeInsetsMake(0, 40, 0, 40);
    textField3.leftViewMode = UITextFieldViewModeAlways;
    textField3.rightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    textField3.rightView.backgroundColor = [UIColor orangeColor];
    textField3.rightViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:textField3];
    textField3.inputAccessoryView = [UIView fmi_createInputAccessoryViewWithCompletion:^{
        [weakSelf.view endEditing:YES];
    }];
}

@end
