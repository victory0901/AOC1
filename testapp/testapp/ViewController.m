//
//  ViewController.m
//  testApp
//
//  Created by James Floyd II on 8/23/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Changed Background Color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //Create UILabel for Username
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 50.0f)];
    if (username != nil)
    {
        username.text = @"Username:";
        username.backgroundColor = [UIColor lightGrayColor];
        [self.view addSubview:username];
    }
    
    //Create UIButton for Login
    login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (login != nil)
    {
        login.frame = CGRectMake(150.0f, 70.0f, 100.0f, 30.0f);
        [login setTitle:@"Login" forState:UIControlStateNormal];
        [self.view addSubview:login];
    }
    
    //Create UILabel for Login Status
    loginStatus = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 150.0f, 320.0f, 50.0f)];
    if (loginStatus != nil)
    {
        loginStatus.text = @"Please Enter Username";
        loginStatus.numberOfLines = 2;
        loginStatus.backgroundColor = [UIColor grayColor];
        loginStatus.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:loginStatus];
    }
    
    //Create UIButton for Information
    info = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (info != nil)
    {
        info.frame = CGRectMake(10.0f, 350.0f, 25.0f, 25.0f);
        [self.view addSubview:info];
    }
    
    //Create UIButton for Show Date
    showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDate != nil)
    {
        showDate.frame = CGRectMake(10.0f, 250.0f, 100.0f, 30.0f);
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [self.view addSubview:showDate];
    }
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
