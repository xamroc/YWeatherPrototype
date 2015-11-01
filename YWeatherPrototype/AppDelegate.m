//
//  AppDelegate.m
//  YWeatherPrototype
//
//  Created by Marco Lau on 1/11/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import "AppDelegate.h"
#import "ECSlidingViewController.h"
#import "MenuViewController.h"
#import "ScrollViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    
    // Variable names based on ECSlidingViewController examples
    ScrollViewController *topViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"Scroll"];
    MenuViewController *underLeftViewController = (MenuViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"Menu"];
    
    ECSlidingViewController *slidingViewController = [[ECSlidingViewController alloc] initWithTopViewController:topViewController];
    slidingViewController.underLeftViewController = underLeftViewController;
    
    [slidingViewController.view addGestureRecognizer:slidingViewController.panGesture];
    self.window.rootViewController = slidingViewController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
