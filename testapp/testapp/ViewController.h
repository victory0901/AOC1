//
//  ViewController.h
//  testapp
//
//  Created by James Floyd II on 8/16/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{

}

- (int)Add:(NSInteger)intOne intTwo:(NSInteger)intTwo;
-(BOOL)Compare:(NSInteger)compareOne compareTwo:(NSInteger)compareTwo;
-(NSString*)Append:(NSString*)stringOne stringTwo:(NSString*)stringTwo;
-(void)DisplayAlertWithString:(NSString*)nsString;
@end
