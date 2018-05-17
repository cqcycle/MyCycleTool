//
//  CycleNotificationTextField.m
//  MyCycleTool
//
//  Created by dihuijun on 17/7/10.
//  Copyright © 2017年 Cycle. All rights reserved.
//

#import "CycleNotificationTextField.h"

static NSString *const textField_PlaceHolderLabel = @"_placeholderLabel.textColor";
@implementation CycleNotificationTextField


-(void)awakeFromNib{
    [super awakeFromNib];
    //1.设置光标颜色
    self.tintColor = [UIColor whiteColor];
    
    //2.设置默认的占位文字颜色
    [self setValue:[UIColor grayColor] forKeyPath:textField_PlaceHolderLabel];
    
    //3.发送通知监听谁发送的通知（addObserver：self接收，object：发送者）
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(beginEditing:) name:UITextFieldTextDidBeginEditingNotification object:self];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(endEditing) name:UITextFieldTextDidEndEditingNotification object:self];
    
}



-(void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
/**  开始监听 */
- (void)beginEditing:(NSNotification *)note
{
    //打印谁接收的(测试)

    //设置白色
    [self setValue:[UIColor whiteColor] forKeyPath:textField_PlaceHolderLabel];
}
/**  结束监听 */
- (void)endEditing
{
    //设置灰色
    [self setValue:[UIColor grayColor] forKeyPath:textField_PlaceHolderLabel];
}

@end
