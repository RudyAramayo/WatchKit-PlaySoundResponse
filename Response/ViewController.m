//
//  ViewController.m
//  Response
//
//  Created by Orbitus on 6/10/15.
//  Copyright © 2015 ChronixNinja. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    //if (audioPlayer)
    //    audioPlayer = nil;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    [audioPlayer play];
    
}


@end
