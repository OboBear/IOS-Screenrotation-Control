//
//  ViewController.m
//  RotateScreen
//
//  Created by obo on 16/1/28.
//  Copyright © 2016年 obo. All rights reserved.
//

#import "ViewController.h"
#import "RotateNavigationController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViews];
}

- (void)initViews {
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 150, 100, 80)];
    [button setTitle:@"切换横竖屏" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(clickToRotate) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)clickToRotate {
    
    RotateNavigationController *navigationController = (RotateNavigationController *)self.navigationController;
    //切换rootViewController的旋转方向
    if (navigationController.interfaceOrientation == UIInterfaceOrientationPortrait) {
        navigationController.interfaceOrientation = UIInterfaceOrientationLandscapeRight;
        navigationController.interfaceOrientationMask = UIInterfaceOrientationMaskLandscapeRight;
        //设置屏幕的转向为横屏
        [[UIDevice currentDevice] setValue:@(UIDeviceOrientationLandscapeRight) forKey:@"orientation"];
    }
    else {
        navigationController.interfaceOrientation = UIInterfaceOrientationPortrait;
        navigationController.interfaceOrientationMask = UIInterfaceOrientationMaskPortrait;
        //设置屏幕的转向为竖屏
        [[UIDevice currentDevice] setValue:@(UIDeviceOrientationPortrait) forKey:@"orientation"];
    }
    //刷新
    [UIViewController attemptRotationToDeviceOrientation];
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait ;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
}

@end
