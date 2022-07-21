#include <objc/runtime.h>
#import "ABCRootListController.h"

//@property (nonatomic,retain) UIView * backgroundView;
//- (id)backgroundView;
//-(UIView *)backgroundView;
//@end

@implementation ABCRootListController

- (NSArray *)specifiers {
    if (!_specifiers) {
        _specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
    }

    return _specifiers;
}

-(void)applyChanges {
    system("killall SpringBoard");
}

@end
