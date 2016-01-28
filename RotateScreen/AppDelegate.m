//
//  AppDelegate.m
//  RotateScreen
//
//  Created by obo on 16/1/28.
//  Copyright © 2016年 obo. All rights reserved.
//

#import "AppDelegate.h"
#import "RotateNavigationController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    RotateNavigationController *rotateNavigationController = [[RotateNavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    [rotateNavigationController setNavigationBarHidden:YES];
    self.window.rootViewController = rotateNavigationController;
    
    return YES;
}


@end
