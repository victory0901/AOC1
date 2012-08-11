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
    
    //Create a UILabel and place it at the top of the view, used as the title of the book.
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(304, 10, 160, 40)];
    if (bookTitle != nil)
        {
            bookTitle.backgroundColor = [UIColor whiteColor];
            bookTitle.text = @"Remains Silent";
            bookTitle.textAlignment = UITextAlignmentCenter;
        }
    [self.view addSubview:bookTitle];
    
    //Create a UILabel for Author:
    author = [[UILabel alloc] initWithFrame:CGRectMake(274, 60, 80, 20)];
    if (author != nil)
        {
            author.backgroundColor = [UIColor blackColor];
            author.text = @"Author: ";
            author.textColor = [UIColor whiteColor];
            author.textAlignment = UITextAlignmentRight;
        }
    [self.view addSubview:author];

    //Create a UILabel for author name
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(354, 60, 140, 20)];
    if (authorName != nil)
    {
        authorName.backgroundColor = [UIColor darkGrayColor];
        authorName.text = @"Michael Baden";
        authorName.textColor = [UIColor grayColor];
        authorName.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:authorName];
    
    //Create a UILabel for Published:
    published = [[UILabel alloc] initWithFrame:CGRectMake(309, 90, 100, 20)];
    if (published != nil)
    {
        published.backgroundColor = [UIColor redColor];
        published.text = @"Published: ";
        published.textColor = [UIColor orangeColor];
        published.textAlignment = UITextAlignmentRight;
    }
    [self.view addSubview:published];
    
    //Create a UILabel for Published Date
    publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(409, 90, 50, 20)];
    if (publishedDate != nil)
    {
        publishedDate.backgroundColor = [UIColor orangeColor];
        publishedDate.text = @"2005";
        publishedDate.textColor = [UIColor redColor];
        publishedDate.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:publishedDate];
    
    //Create a UILabel for Summary
    summary = [[UILabel alloc] initWithFrame:CGRectMake(334, 120, 100, 20)];
    if (summary != nil)
    {
        summary.backgroundColor = [UIColor greenColor];
        summary.text = @"Summary: ";
        summary.textColor = [UIColor purpleColor];
        summary.textAlignment = UITextAlignmentLeft;
    }
    [self.view addSubview:summary];
    
    //Create a UILabel for Summary text
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(154, 140, 460, 240)];
    if (summaryText != nil)
    {
        summaryText.backgroundColor = [UIColor blueColor];
        summaryText.text = @"Medical Examiner, Dr. Jake Rosen is called to the construction site of a mall where a body is unearthed. Attorney Philomena Manfreda is asked to represent the victim's family. Both Manny and Jake find themselves entagled in a mystery where a mounting body count hides both a shocking cover-up and a devastating love story.";
        summaryText.textColor = [UIColor cyanColor];
        summaryText.numberOfLines = 8;
        summaryText.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:summaryText];
    
    //NSArray of 5 items talked about in the book
    NSArray *itemList = [[NSArray alloc] initWithObjects: @"Murder, ", @"Forensics, ",@"Cover-up, ", @"Mystery, ", @"Romance", nil];
    
    //NSMutableString 
    NSMutableString *mutableStringList = [[NSMutableString alloc] init];
    
    //Loop through the NSArray you created and append each of these items to your NSMutableString
    for (int i=0; i < [itemList count]; i++) {
        [mutableStringList appendString: [itemList objectAtIndex:i]];
    }
    
    //Create a UILabel for List of Items
    list = [[UILabel alloc] initWithFrame:CGRectMake(334, 400, 100, 20)];
    if (list != nil)
    {
        list.backgroundColor = [UIColor magentaColor];
        list.text = @"List of Items";
        list.textColor = [UIColor yellowColor];
        list.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:list];
    
    //Create a UILabel for List Text
    listText = [[UILabel alloc] initWithFrame:CGRectMake(269, 420, 230, 80)];
    if (listText != nil)
    {
        listText.backgroundColor = [UIColor brownColor];
        listText.text = mutableStringList;
        listText.textColor = [UIColor grayColor];
        listText.textAlignment = UITextAlignmentCenter;
        listText.numberOfLines = 2;
    }
    [self.view addSubview:listText];
    
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
