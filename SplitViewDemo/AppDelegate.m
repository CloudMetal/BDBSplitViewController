//
//  AppDelegate.m
//  SplitViewDemo
//
//  Created by Bradley Bergeron on 10/25/13.
//  Copyright (c) 2013 Bradley Bergeron. All rights reserved.
//

#import "AppDelegate.h"
#import "BDBSplitViewController.h"
#import "MasterViewController.h"
#import "DetailViewController.h"


#pragma mark -
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    BDBSplitViewController *splitViewController = [[BDBSplitViewController alloc] initWithMasterViewController:[MasterViewController new]
                                                                                          detailViewController:[[DetailViewController alloc] initWithNibName:nil bundle:nil]];

    self.window.rootViewController = splitViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
