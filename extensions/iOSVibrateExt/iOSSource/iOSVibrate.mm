#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "iOSVibrate.h"
#import <CoreHaptics/CoreHaptics.h>

@implementation iOSVibrate

-(void)Init
{
    NSLog(@"Welcome to iOSVibrate by Juju Adams! This is version 1.1.0, 2024-06-18");
}

-(double)VibrateWeak
{
    AudioServicesPlaySystemSound(1519);
    return 1.0;
}

-(double)VibrateStrong
{
    AudioServicesPlaySystemSound(1520);
    return 1.0;
}

-(double)VibrateDouble
{
    AudioServicesPlaySystemSound(1102);
    return 1.0;
}


-(double)VibrateTriple
{
    AudioServicesPlaySystemSound(1521);
    return 1.0;
}

-(double)VibrateIsSupported
{
    return [CHHapticEngine capabilitiesForHardware].supportsHaptics;
}

@end
