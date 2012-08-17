//
//  ViewController.m
//  testapp
//
//  Created by James Floyd II on 8/16/12.
//  Copyright (c) 2012 James Floyd II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//Add Function, returns the sum of two NSIntergers
- (int)Add:(NSInteger)intOne intTwo:(NSInteger)intTwo
{
    return intOne + intTwo;
}

//Compare Function, returns BOOL when comparing two BOOLs
-(BOOL)Compare:(NSInteger)boolOne BoolTwo:(NSInteger)boolTwo
{
    return (boolOne == boolTwo);
}

//Append function, returns an appended String when append a NSString to another
-(NSString*)Append:(NSString*)stringOne stringTwo:(NSString*)stringTwo
{
    NSMutableString* stringAppended = [[NSMutableString alloc] initWithFormat:stringOne];
    [stringAppended appendString:stringTwo];
    return stringAppended;
}

//DisplayAlertWithString function, shows alert 
-(void)DisplayAlertWithString:(NSString*)nsString
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:nsString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil ];
    
    if (alertView != nil)
    {
        [alertView show];
    }
}

- (void)viewDidLoad
{
    //Display UIAlertView with appended string using DisplayAlertWithString
    NSString *string = [self Append:@"James has won the " stringTwo:@"Powerball."];
    [self DisplayAlertWithString:string];
    
    //Use Add function and set return to variable
    addSum = [self Add:1 intTwo:1];
    
    //Bundle addSum into NSNumber and convert to NSString
    NSNumber *addSumBundle = [[NSNumber alloc] initWithInt:addSum];
    NSString *addSumString = [addSum stringValue];
    
    //
    
    
    
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
