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
-(BOOL)Compare:(NSInteger)compareOne compareTwo:(NSInteger)compareTwo
{
    return (compareOne == compareTwo);
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
    NSString *string = [self Append:@"James has won the " stringTwo:@"Powerball"];
    [self DisplayAlertWithString:string];
    
    //Use Add function and set return to variable
    int addSum = [self Add:1 intTwo:1];
    
    //Bundle addSum into NSNumber and convert to NSString
    NSNumber *addSumBundle = [[NSNumber alloc] initWithInt:addSum];
    NSString *addSumString = [addSumBundle stringValue];
    
    //Display UIAlertView with message, "The number is "
    NSString *stringTwo = [self Append:@"The number is " stringTwo:addSumString];
    [self DisplayAlertWithString:stringTwo];
    
    //Use Compare function, if Compare equal to YES, display UIAlertView
    NSInteger numOne = 2;
    NSInteger numTwo = 2;
    BOOL compareOutcome = [self Compare:numOne compareTwo:numTwo];
    
    if (compareOutcome == YES)
    {
        NSString *message = [NSString stringWithFormat:@"Are the integers %i and %i the same? %@!", numOne, numTwo, (compareOutcome ? @"YES" : @"NO")];
        [self DisplayAlertWithString:message];
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