//
//  AEAppDelegate.m
//  Scaning
//
//  Created by william on 13-11-14.
//  Copyright (c) 2013年 iphone. All rights reserved.
//

#import "AEAppDelegate.h"
#import "UIView+AEScaningEffect.h"


@implementation AEAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor blackColor];
    
    UIViewController *viewctl = [[UIViewController alloc] initWithNibName:nil bundle:nil];
    self.window.rootViewController = viewctl;
    
    self.imgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 100, 300, 250)];
    UIImage *img = [UIImage imageNamed:@"avatar.jpg"];
    self.imgView.image = img;
    [viewctl.view addSubview:self.imgView];
    
    UIButton *start = [[UIButton alloc]initWithFrame:CGRectMake(30, 350, 100, 60)];
    [start setTitle:@"start" forState:UIControlStateNormal];
    [start addTarget:self action:@selector(start:) forControlEvents:UIControlEventTouchUpInside];
    [viewctl.view addSubview:start];
    
    UIButton *stop = [[UIButton alloc]initWithFrame:CGRectMake(180, 350, 100, 60)];
    [stop setTitle:@"stop" forState:UIControlStateNormal];
    [stop addTarget:self action:@selector(stop:) forControlEvents:UIControlEventTouchUpInside];
    [viewctl.view addSubview:stop];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)start:(id)sender
{
    [self.imgView startScaningRepeatCount:1000 Duration:2 HeightFactor:0.3];
}

- (void)stop:(id)sender
{
    [self.imgView stopScaning];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
