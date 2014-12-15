//
//  TabBar.h
//  lottery
//
//  Created by WangZhong on 14/12/15.
//  Copyright (c) 2014年 WangZhong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarButton.h"

@class TabBar;

@protocol TabBarDelegate <NSObject>

@optional
- (void)tabBar:(TabBar *)tabBar didSelectButtonFrom:(int)from to:(int)to;

@end



@interface TabBar : UIView

@property (nonatomic, weak) TabBarButton *selectedButton;
@property (nonatomic, weak) id<TabBarDelegate> delegate;

/**
 *  用来添加一个内部按钮
 *
 *  @param name    按钮图片
 *  @param selName 按钮选中时候的图片
 */
-(void) addTabButtonWithName:(NSString *)name selName:(NSString *) selName;

@end
