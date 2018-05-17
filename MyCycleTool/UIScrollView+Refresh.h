//
//  UIScrollView+Refresh.h
//  JCJD
//
//  Created by zl on 2017/12/4.
//  Copyright © 2017年 zl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomRefreshView.h"

@interface UIScrollView (Refresh)

@property (nonatomic,strong) CustomRefreshView *topShowView;

-(void)addHeaderRefreshWithTarget:(id)target action:(SEL)action;

-(void)beginHeaderRefresh;

-(void)endHeaderRefresh;


@end
