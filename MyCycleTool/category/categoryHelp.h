//
//  categoryHelp.h
//  MyCycleTool
//
//  Created by dihuijun on 17/5/15.
//  Copyright © 2017年 Cycle. All rights reserved.
//   分类和宏

#ifndef categoryHelp_h
#define categoryHelp_h

///防止系统函数影响
#ifdef __OBJC__

#import "CycleDefines.h"
/**   1.文本框   */
/// 通过becomeResponse，resign来控制当聚焦或者失去焦点，占位文字颜色
#import "ZBDrawTextField.h"
/// 通过textfield的addtarget来控制当聚焦或者失去焦点，占位文字颜色
#import "CyclePlaceHolderTextField.h"
/// 通过textfield的“通知 notification ”来控制当聚焦或者失去焦点，占位文字颜色
#import "CycleNotificationTextField.h"
/// 分类，设置占位文字颜色
#import "UITextField+CycleTextField.h"

/// 2.圆形按钮
#import "CycleSquareButton.h"
/// 3.垂直方向的按钮
#import "CycleVerticalButtom.h"
/// 4.textView （CycleTextView：通过DrawRect和label两种方式）
#import "CycleTextView.h"
#import "CycleTextViewHolderLabel.h"
/// 5.头顶弹出提示
#import "CycleTopWindow.h"
/// 6.时间
#import "NSDate+Cycle.h"
#import "NSCalendar+Cycle.h"
/// 7.搜索框
#import "ZBSearchBar.h"
/// 8.设置导航栏按钮
#import "UIBarButtonItem+Item.h"

/// 9.通过按钮的分类  设置对应按钮的属性值
#import "UIButton+Cycle.h"

/// 10.图片
#import "UIImage+Image.h"

/// 11.设置图片
#import "UIImageView+CycleUIImageView.h"

/// 12.frame
#import "UIView+Frame.h"

/// 13.计算文件尺寸
#import "NSString+fileSize.h"

///获取device
#import "NSString+GetDevice.h"

///加密MD5
#import "NSString+MD5.h"

///根据字符串返回一个颜色,或者根据UIColor返回NSString
#import "UIColor+HexColors.h"

///传入json文件或者plist文件返回字典
#import "NSDictionary+Cycle.h"

///设置圆角，圆角边框，layer
#import "UIView+CycleLayer.h"

///获取当前控制器以便跳转
#import "UIWindow+currentViewController.h"

///中文，随机数，处理“*”手机号，去空格，取时间字符串，时间转换，富文本
#import "NSString+Cycle.h"

#endif







#endif /* categoryHelp_h */
