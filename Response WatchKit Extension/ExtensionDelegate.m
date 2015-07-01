//
//  ExtensionDelegate.m
//  Response WatchKit Extension
//
//  Created by Orbitus on 6/10/15.
//  Copyright © 2015 ChronixNinja. All rights reserved.
//

#import "ExtensionDelegate.h"

@implementation ExtensionDelegate

- (void)applicationDidFinishLaunching {
    // Perform any final initialization of your application.
}

- (void)applicationDidBecomeActive {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [self playSound];
}

- (void)applicationWillResignActive {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, etc.
    [self playSound];
}

- (void) playSound
{
    
    //Unable to access the resource
    /*
    NSString *path = [[NSBundle mainBundle] pathForResource:@"aye_knight" ofType:@"wav"];
    NSURL *url = [NSURL URLWithString:path];
    
    WKAudioFileAsset *asset = [WKAudioFileAsset assetWithURL:url];
    WKAudioFilePlayerItem *playerItem = [WKAudioFilePlayerItem playerItemWithAsset:asset];
    WKAudioFilePlayer *player = [WKAudioFilePlayer playerWithPlayerItem:playerItem];
    [player play];*/
     
    
}



@end
