//
//  ViewController.m
//  testApp
//
//  Created by James Floyd II on 8/23/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2

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
    
    //Create UITextField for Full Name
    textField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 20.0f, 150.0f, 30.0f)];
    if (textField != nil)
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    //Create UIButton for Login
    login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (login != nil)
    {
        login.frame = CGRectMake(150.0f, 55.0f, 100.0f, 30.0f);
        [login setTitle:@"Login" forState:UIControlStateNormal];
        [login addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        login.tag = BUTTON_ZERO;
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
        loginStatus.textColor = [UIColor blueColor];
        [self.view addSubview:loginStatus];
    }
    
    //Create UIButton for Show Date
    showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (showDate != nil)
    {
        showDate.frame = CGRectMake(10.0f, 250.0f, 100.0f, 30.0f);
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        showDate.tag = BUTTON_ONE;
        [self.view addSubview:showDate];
    }

    //Create NSDate Object for current date and time
    date = [NSDate date];
    dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil)
    {
        [dateFormatter setDateFormat:@"MMMM dd, yyyy hh:mm aa"];
        currentDate = [dateFormatter stringFromDate:date];
    }
    
    
    //Create UIButton for Information
    info = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (info != nil)
    {
        info.frame = CGRectMake(10.0f, 350.0f, 25.0f, 25.0f);
        [info addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        info.tag = BUTTON_TWO;
        [self.view addSubview:info];
    }
    
    //Create UILabel for Information
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 375.0f, 320.0f, 50.0f)];
    if (infoLabel != nil)
    {
        infoLabel.text = @"";
        infoLabel.textColor = [UIColor purpleColor];
        infoLabel.numberOfLines = 2;
        infoLabel.textAlignment = UITextAlignmentCenter;
        infoLabel.backgroundColor = [UIColor clearColor];
        [self.view addSubview:infoLabel];
        
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onClick:(UIButton*)button
{
    if (button.tag == 0)
    {
        userText = [textField text];
        if (userText.length != 0)
        {
            loginStatus.text = [NSString stringWithFormat:@"User: %@ has been logged in", userText];
            loginStatus.textColor = [UIColor greenColor];
        }
        else
        {
            loginStatus.text = @"Username cannot be empty";
            loginStatus.textColor = [UIColor redColor];
        }
    }
    
    else if (button.tag == 1)
    {
        //Create NSDate Object for current date and time
        date = [NSDate date];
        dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil)
        {
            [dateFormatter setDateFormat:@"MMM dd, yyyy hh:mm aa"];
            currentDate = [dateFormatter stringFromDate:date];
        
        
            alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:currentDate delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            if (alertView != nil)
            {
            [alertView show];
            }
        }
    }
    
    else if (button.tag == 2)
    {
        infoLabel.text = @"This application was created by: James Floyd II";
    }
    
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
