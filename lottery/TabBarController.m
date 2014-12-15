//
//  TabBarController.m
//  lottery
//
//  Created by WangZhong on 14/12/15.
//  Copyright (c) 2014年 WangZhong. All rights reserved.
//

#import "TabBarController.h"
#import "TabBar.h"
#import "TabBarButton.h"

@interface TabBarController () <TabBarDelegate>

//当前选中按钮
@property (nonatomic, weak) UIButton *selectedButton;

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TabBar *myTabBar = [[TabBar alloc] init];
    myTabBar.delegate = self;
    myTabBar.frame = self.tabBar.bounds;
    [self.tabBar addSubview:myTabBar];
    
    for (int i = 0; i < self.viewControllers.count; i++) {
        NSString *name = [NSString stringWithFormat:@"TabBar%d", i+1];
        NSString *selName = [NSString stringWithFormat:@"TabBar%dSel", i+1];
        [myTabBar addTabButtonWithName:name selName:selName];
    }
    
    
    
}

#pragma 实现代理方法
-(void)tabBar:(TabBar *)tabBar didSelectButtonFrom:(int)from to:(int)to
{
    self.selectedIndex = to;
}





@end
