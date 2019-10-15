//
//  AppDelegate.m
//  NCBluetooth
//
//  Created by lishengfeng on 2019/10/14.
//  Copyright © 2019 Nicolas. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIWindow *window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [window makeKeyAndVisible];
    self.window = window;
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc]init]];
    window.rootViewController = nav;
    return YES;
}

@end
