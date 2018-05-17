//
//  ZBDrawTextField.m
//  BaiSiBuDeQiJie
//
//  Created by Cycle on 16/4/10.
//  Copyright © 2016年 Cycle. All rights reserved.
//

#import "ZBDrawTextField.h"
#import <objc/runtime.h>

static NSString *const GetPlaceHolderColor = @"_placeholderLabel.textColor";

@implementation ZBDrawTextField


+(void)initialize{
    
//    [self getIvars];
//    [self getProperties];
//    [self getMethod];
    
    
}
/**************  获得某个类的所有方法**********************/
+ (void)getMethod{
    unsigned int count = 0;
   Method *Allmethods = class_copyMethodList([UITextField class], &count);
    for (int i = 0; i<count; i++) {
        
//        Method methodss= *(Allmethods+i);
        //或者Method methodss = Allmethods[i];
        Method methodss = Allmethods[i];
        NSLog(@"%s",method_getName(methodss));
    }
    
    free(Allmethods);
    
}
/*********** 获得某个类的属性 *****************/
+ (void)getProperties{
    unsigned int count = 0;
   objc_property_t *properties = class_copyPropertyList([UITextField class], &count);
    
    for (int i=0; i<count; i++) {
        objc_property_t property = properties[i];
        //获得属性和该属性对应的数据类型(MJExtension就是这么做的)
        NSLog(@"%s  ----  %s",property_getName(property),property_getAttributes(property));
    }
    //释放掉
    free(properties);
    
}
/*********获得某个类里面的成员变量，无论是私有还是共有**********/
+ (void)getIvars{
    unsigned int count = 0;
    //根据count的地址符去查找对应的该类型成员的值数量
    //拷贝所有该类成员列表
    Ivar *ivars = class_copyIvarList([UITabBar class], &count);
    //得到的都是这个类的成员变量
    for (int i =0; i<count; i++) {
        
        Ivar vars = *(ivars+i);
//        Ivar vars = ivars[i];
        //*指向，取出第 i 的一个值
        NSLog(@"%s",ivar_getName(vars));
    }
    
    //一定要释放掉
    free(ivars);
}
/***设置textField提示文字****/

-(void)awakeFromNib{
    [super awakeFromNib];
    
    //聚焦的颜色
    self.tintColor = self.textColor;
    
    //当失去焦点的时候是灰色
    [self resignFirstResponder];
    
    
    
    //    //方法一:将系统的tabBar转化为自己定义的一个tabBar
    
    //    [self setValue:tabBar forKeyPath:@"tabBar"];
    
    //    //方法二:消息(需要在点击项目,收索msg改为NO,此时可以打出Objc_msgSend()),self表示发送者,SEL(setTabBar:)表示发送什么,tabBar这里表示具体内容,属于底层
    
//            objc_msgSend(self, @selector(setTabBar:),tabBar);
//    objc_msgSend(self,@selector(Back),);
    
//        NSLog(@"002:%@",self.tabBar);
    
    
    
    
}



//重写父类方法
-(BOOL)resignFirstResponder{
    [self setValue:[UIColor grayColor] forKeyPath:GetPlaceHolderColor];
    
    
    return [super resignFirstResponder];
}

-(BOOL)becomeFirstResponder{
    //此时设置聚焦时候的蚊子颜色
    [self setValue:[UIColor whiteColor] forKeyPath:GetPlaceHolderColor];
    self.tintColor = [UIColor whiteColor];
    return [super becomeFirstResponder];
}

//绘制
//-(void)drawPlaceholderInRect:(CGRect)rect{
//    
//    [self.placeholder drawInRect:CGRectMake(0, 10, rect.size.width, rect.size.height-10) withAttributes:@{
//                                                       NSForegroundColorAttributeName:[UIColor grayColor]
//                                                       
//                                                       
//                                                       }];
//    
//}

@end
