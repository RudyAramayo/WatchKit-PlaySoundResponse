//
//  InterfaceController.m
//  Response WatchKit Extension
//
//  Created by Orbitus on 6/10/15.
//  Copyright © 2015 ChronixNinja. All rights reserved.
//

#import "InterfaceController.h"




@interface InterfaceController()

@end


@implementation InterfaceController


- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}


- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSString *message = @{ @"request" : @"fireLocalNotification" };
    //xWCSession.defaultSession().sendMessage(
    
}


- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


- (IBAction)respond_aye:(id)sender
{
    NSBundle* myBundle = [NSBundle mainBundle];
    NSURL* movieURL = [myBundle URLForResource:@"aye_knight" withExtension:@"wav"];
    [self playURL:movieURL];
    
}

- (IBAction)respond_help:(id)sender
{
    NSBundle* myBundle = [NSBundle mainBundle];
    NSURL* movieURL;
    NSString *rand_help = [NSString stringWithFormat:@"help_knight_0%i", arc4random() % 6+1];
    //NSLog(@"rand_help = %@", rand_help);
    movieURL = [myBundle URLForResource:rand_help withExtension:@"wav"];
    [self playURL:movieURL];
}


- (IBAction)respond_nay:(id)sender
{
    NSBundle* myBundle = [NSBundle mainBundle];
    NSURL* movieURL = [myBundle URLForResource:@"nay_knight" withExtension:@"wav"];
    [self playURL:movieURL];
}


- (void)playURL:(NSURL *)url
{
    

    // Use Media PLayer COntroller
    
    NSDictionary* options = @{WKMediaPlayerControllerOptionsAutoplayKey : @YES};
    
    [self presentMediaPlayerControllerWithURL:url
                                      options:options
                                   completion:^(BOOL didPlayToEnd, NSTimeInterval endTime, NSError * __nullable error) {
                                       if (error)
                                           NSLog(@"Error: %@", [error description]);
                                   }];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self dismissMediaPlayerController];

    });
}

@end



