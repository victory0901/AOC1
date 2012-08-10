//
//  ViewController.m
//  testApp
//
//  Created by James Floyd II on 8/10/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Change the background color of the view
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //Create a UILabel and place it at the top of the view. This is used as the title of the book.
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(304, 10, 160, 20)];
    if (bookTitle != nil)
        {
            bookTitle.backgroundColor = [UIColor whiteColor];
            bookTitle.text = @"Remains Silent";
            bookTitle.textAlignment = UITextAlignmentCenter;
        }
    [self.view addSubview:bookTitle];
    
    
    
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
