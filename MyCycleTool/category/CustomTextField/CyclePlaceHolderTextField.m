//
//  CyclePlaceHolderTextField.m
//  MyCycleTool
//
//  Created by dihuijun on 17/7/6.
//  Copyright © 2017年 Cycle. All rights reserved.
//

#import "CyclePlaceHolderTextField.h"


static NSString *const textField_PlaceHolderLabel = @"_placeholderLabel.textColor";


@implementation CyclePlaceHolderTextField



-(void)awakeFromNib{
    [super awakeFromNib];
    //设置光标颜色
    self.tintColor = [UIColor redColor];
    
    
    //设置默认的占位文字颜色
    [self setValue:[UIColor grayColor] forKeyPath:textField_PlaceHolderLabel];
    
    
    //监听键盘出来的事件
    [self addTarget:self action:@selector(EditingDidBegin:) forControlEvents:UIControlEventEditingDidBegin];
    //监听键盘下去的事件
    [self addTarget:self action:@selector(EditingDidEnd:) forControlEvents:UIControlEventEditingDidEnd];
    //监听text值的改变的事件
    [self addTarget:self action:@selector(textfieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    
}
#pragma mark --- 1.监听键盘出来的事件
- (void)EditingDidBegin:(UITextField *)textField{
    [self setValue:[UIColor redColor] forKeyPath:textField_PlaceHolderLabel];
}
#pragma mark --- 2.监听键盘下去的事件
- (void)EditingDidEnd:(UITextField *)textField{
    [self setValue:[UIColor grayColor] forKeyPath:textField_PlaceHolderLabel];
}
#pragma mark --- 3.监听text值的改变的事件
- (void)textfieldDidChange:(UITextField *)textField{
    NSLog(@"%@",textField.text);
}

@end
