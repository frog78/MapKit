//
//  AppDelegate.m
//  BaiduMapSample
//
//  Created by frog78 on 2020/9/30.
//  Copyright © 2020 frog78. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <BaiduMapKit/BaiduMapKit.h>

@interface AppDelegate ()<BMKGeneralDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    BOOL ret = [[BMKMapManager sharedInstance] start:@"xxxxx" generalDelegate:self];
    if (!ret) {
        NSLog(@"manager start failed!");
    }
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[ViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}



@end
