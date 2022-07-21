#import "Tweak.h"

@interface SBDockView : UIView
@end

%hook SBDockView

-(void)setBackgroundAlpha:(double)arg1 {
%orig(0);
NSDictionary *settings = [[NSUserDefaults standardUserDefaults]
persistentDomainForName:@"com.vyper.transdock"];
id enabled = [settings valueForKey:@"enabled"];
if([enabled isEqual:@0]) return %orig;
}

%end