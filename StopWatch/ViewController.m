//
//  ViewController.m
//  StopWatch
//
//  Created by 大野　有以 on 14/01/09.
//  Copyright (c) 2014年 univercityofkitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
    
@synthesize resultLabel;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushedStartButton:(id)sender {
    
    timeCount = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(showActivity) userInfo:nil repeats:YES];
}

- (IBAction)pushedStopButton:(id)sender {
    
    [timeCount invalidate];
}

- (IBAction)pushedResetButton:(id)sender {
    
    resultLabel.text = @"00.00";
}

-(void)showActivity{
    float currentTime = [resultLabel.text floatValue];
    float displayTime = currentTime + 0.01;
    
    resultLabel.text = [NSString stringWithFormat:@"%.2f", displayTime];
}



@end
