//
//  ViewController.h
//  testApp
//
//  Created by James Floyd II on 8/23/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *username;
    UILabel *loginStatus;
    UIButton *login;
    UIButton *info;
    UIButton *showDate;
    NSDate *date;
    NSDateFormatter *dateFormatter;
    NSString *currentDate;
    UIAlertView *alertView;
    UITextField *textField;
    NSString *userText;
}
-(void)onClick:(UIButton*)button;
@end
