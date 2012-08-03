//
//  AppDelegate.m
//  testApp
//
//  Created by James Floyd on 8/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Lunchtime - Story
    
    //Variables
    int chipBags = 0;
    bool tuna = NO;
    bool peanutButter = YES;
    bool jelly = NO;
    float breadAmount = 2.5f;
    float milkCups = 1.0f;
    
    
    NSLog(@"How many sandwiches would you like for your lunch, Jimmy?");
    
    //Cast the float to an int
    NSLog(@"Dad, I want %.1f sandwiches. We only have enough bread for %d, Jimmy.", breadAmount, (int)breadAmount);
    
    
    NSLog(@"Dad, I want either a PBJ/peanut butter sandwich with milk or tuna sandwich with chips?");
    
    //Use an if, else if and else check using any of the data types of your choice
    //AND, OR comparison. Use float, int and BOOL types. 
    if ((peanutButter && jelly) && milkCups >= 1.0) {
        NSLog(@"We are going to have peanut butter and jelly sandwiches, Jimmy.");
    }
    else if ((peanutButter && !jelly) && milkCups >= 1.0) {
        NSLog(@"We are going to have peanut butter sandwiches, Jimmy.");
    }
    else if ((!peanutButter && tuna) || ((chipBags > 0) && tuna)) {
        NSLog(@"We are going to tuna sandwiches with chips and juice, Jimmy.");
    }
    else {
        NSLog(@"Unfortunately, we don't have the proper ingredients for any of those choices, Jimmy.");
    }
    
    NSLog(@"Here are some fruit snacks, Jimmy. Count them out please.");
    
    //Single for loop printing out values to the console
    for (int x=1; x>0; x++) {
        NSLog(@"We have %d fruit snacks", x);
        if (x == 10)
        {
            break;
        }
    }

    NSLog(@" Good job! We also gonna have some apples slices. Count them out please, Jimmy.");
    
    //Nested loop printing out values to the console
    for (int apple = 1; apple >0 ; apple--) {
        for ( int slices = 1; slices <= 4; slices++) {
            NSLog(@"We have %d slices of apples.", slices);
        }
    }
    
    while (<#condition#>) {
        <#statements#>
    }
    

    
    
    
    
    return YES;
    
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








