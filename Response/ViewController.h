//
//  ViewController.h
//  Response
//
//  Created by Orbitus on 6/10/15.
//  Copyright © 2015 ChronixNinja. All rights reserved.
//

#import <UIKit/UIKit.h>

@import AVFoundation;

@interface ViewController : UIViewController
{
    AVAudioPlayer *audioPlayer;
}
- (IBAction)respond_nay:(id)sender;
- (IBAction)respond_help:(id)sender;
- (IBAction)respond_aye:(id)sender;


@end

