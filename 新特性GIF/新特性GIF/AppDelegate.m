//
//  AppDelegate.m
//  新特性GIF
//
//  Created by 郭绍彬 on 16/8/24.
//  Copyright © 2016年 郭绍彬. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    UIViewController *VC = [self defaultRootViewController];
    
    self.window.rootViewController = VC;
    [self.window makeKeyAndVisible];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:@"dandanRootViewController" object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        
        NSLog(@"%@",note);
        self.window.rootViewController = [[MainViewController alloc]init];
        NSLog(@"进入主界面,不会再出现新特性了");
    }];
    return YES;
}
///  默认跟控制器
- (UIViewController *)defaultRootViewController {
    
    return [self isNewVersion] ? [[ViewController alloc] init] : [[MainViewController alloc] init];
}

///  是否是新版本
- (BOOL)isNewVersion {
    
    CGFloat currentVersion = [[NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"] floatValue];
    NSString *sandboxVersionKey = @"sandboxVersionKey";
    CGFloat sandboxVersion = [[NSUserDefaults standardUserDefaults] doubleForKey:sandboxVersionKey];
    [[NSUserDefaults standardUserDefaults] setDouble:currentVersion forKey:sandboxVersionKey];
//    return currentVersion > sandboxVersion;
    return YES;
}

///  销毁通知
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"dandanRootViewController" object:nil];
}

@end
