//
//  LoginViewController.m
//  lottery
//
//  Created by WangZhong on 14/12/15.
//  Copyright (c) 2014年 WangZhong. All rights reserved.
//

#import "LoginViewController.h"
#import "UIImage+Extension.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *normal = [UIImage resizableImage:@"RedButton"];
    UIImage *high = [UIImage resizableImage:@"RedButtonPressed"];
    
    [self.loginBtn setBackgroundImage:normal forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:high forState:UIControlStateHighlighted];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
