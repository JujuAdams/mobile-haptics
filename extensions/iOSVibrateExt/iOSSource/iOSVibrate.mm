#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "iOSVibrate.h"

@implementation iOSVibrate
{
}

-(double)iOS_Vibrate_Peek
{     
    AudioServicesPlaySystemSound(1519); //kSystemSoundID_Vibrate
    return 1.0;
}

-(double)iOS_Vibrate_Pop
{     
    AudioServicesPlaySystemSound(1520);
    return 1.0;
}

-(double)iOS_Vibrate_Double
{     
    AudioServicesPlaySystemSound(1011);
    return 1.0;
}


-(double)iOS_Vibrate_Triple
{     
    AudioServicesPlaySystemSound(1521);
    return 1.0;
}

-(double)iOS_Vibrate_Custom:(double)vibeid;
{     
    AudioServicesPlaySystemSound(vibeid);
    return 1.0;
}

@end