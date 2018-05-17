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

/*
 
 
 NSDate+MJ.h
 #pragma mark  ----重写时间get方法,微博日期格式EEE MMM d HH:mm:ss Z yyyy  利用 MJ 的时间格式转换
 -(NSString *)created_at
 {
 //格式化HH是24小时制,hh是12小时制
 NSDateFormatter *sdf=[[NSDateFormatter alloc]init];
 [sdf setDateFormat:@"EEE MMM d HH:mm:ss Z yyyy"];
 // 让时间本地化,让日期格式字符串知道来自哪（EEE MMM d HH:mm:ss Z yyyy）,当发送微博时可以检测到,判断控件是否存在,点击debug
 
 sdf.locale = [NSLocale localeWithLocaleIdentifier:@"en_us"];
 // 字符串转日期
 NSDate *created_at=[sdf dateFromString:_created_at];
 //今年
 if([created_at isThisYear])
 {
 //今天
 if ([created_at isToday]) {
 
 //根据时间组件判断时间差
 NSDateComponents *cmp=[created_at deltaWithNow];
 
 //1.判断是大于1小时
 if (cmp.hour >= 1) {
 return [NSString stringWithFormat:@"%ld小时之前",(long)cmp.hour];
 //2.判断时间在1-60分钟之内
 }else if (cmp.minute >=1 && cmp.minute<60){
 return [NSString stringWithFormat:@"%ld分钟之前",(long)cmp.minute];
 //3.判断时间在1分钟之内
 }else{
 return @"刚刚";
 }
 }else if ([created_at isYesterday]){ //昨天
 [sdf setDateFormat:@"昨天 HH:mm"];
 }else{//两天前
 [sdf setDateFormat:@"MM:dd HH:mm"];
 return [sdf stringFromDate:created_at];
 }
 
 } else { //不是今年
 
 [sdf setDateFormat:@"yyyy:MM:dd HH:mm"];
 return [sdf stringFromDate:created_at];
 
 }
 
 
 return _created_at;
 
 }
 */
