//
//  ViewController.h
//  StopWatch
//
//  Created by 大野　有以 on 14/01/09.
//  Copyright (c) 2014年 univercityofkitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
        NSTimer *timeCount;
}
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)pushedStartButton:(id)sender;
- (IBAction)pushedStopButton:(id)sender;
- (IBAction)pushedResetButton:(id)sender;

-(void)showActivity;

@end
