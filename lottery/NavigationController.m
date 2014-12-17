//
//  NavigationController.m
//  lottery
//
//  Created by WangZhong on 14/12/15.
//  Copyright (c) 2014年 WangZhong. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void) initialize
{
    //设置导航栏主题
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    //设置背景照片
    NSString *bgName = nil;
    
    if (iOS7) {
        bgName = @"NavBar64";
    } else {
        bgName = @"NavBar";
    }
    [navBar setBackgroundImage:[UIImage imageNamed:bgName] forBarMetrics:UIBarMetricsDefault];
    
    //设置标题文字颜色
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[UITextAttributeTextColor] = [UIColor whiteColor];
    attrs[UITextAttributeFont] = [UIFont systemFontOfSize:16];
    [navBar setTitleTextAttributes:attrs];
    
    //2设置BarButton主题
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *itemAttr = [NSMutableDictionary dictionary];
    itemAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    itemAttr[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [item setTitleTextAttributes:itemAttr forState:UIControlStateNormal];
    
    if (!iOS7) {
        //设置按钮背景
        [item setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [item setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    }
    

}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}



@end
