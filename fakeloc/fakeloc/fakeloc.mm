#line 1 "/Users/qoocc03/Downloads/FakeWeChatLoc-master/fakeloc/fakeloc/fakeloc.xm"
#import<UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocation.h>
#import "TweakBridge.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class MicroMessengerAppDelegate; @class SeePeopleNearByLogicController; 
static BOOL (*_logos_orig$_ungrouped$MicroMessengerAppDelegate$application$didFinishLaunchingWithOptions$)(_LOGOS_SELF_TYPE_NORMAL MicroMessengerAppDelegate* _LOGOS_SELF_CONST, SEL, id, id); static BOOL _logos_method$_ungrouped$MicroMessengerAppDelegate$application$didFinishLaunchingWithOptions$(_LOGOS_SELF_TYPE_NORMAL MicroMessengerAppDelegate* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$SeePeopleNearByLogicController$onRetrieveLocationOK$)(_LOGOS_SELF_TYPE_NORMAL SeePeopleNearByLogicController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SeePeopleNearByLogicController$onRetrieveLocationOK$(_LOGOS_SELF_TYPE_NORMAL SeePeopleNearByLogicController* _LOGOS_SELF_CONST, SEL, id); 

#line 6 "/Users/qoocc03/Downloads/FakeWeChatLoc-master/fakeloc/fakeloc/fakeloc.xm"


static BOOL _logos_method$_ungrouped$MicroMessengerAppDelegate$application$didFinishLaunchingWithOptions$(_LOGOS_SELF_TYPE_NORMAL MicroMessengerAppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    NSLog(@"weixin-weixin-weixin");
    return _logos_orig$_ungrouped$MicroMessengerAppDelegate$application$didFinishLaunchingWithOptions$(self, _cmd, arg1, arg2);
}






static void _logos_method$_ungrouped$SeePeopleNearByLogicController$onRetrieveLocationOK$(_LOGOS_SELF_TYPE_NORMAL SeePeopleNearByLogicController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {

    CLLocation *location = [[TweakBridge shareInstance] getCoreLocation];
    _logos_orig$_ungrouped$SeePeopleNearByLogicController$onRetrieveLocationOK$(self, _cmd, location); 

    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[@"enter onRetrieveLocationOK" stringByAppendingString:[[NSString alloc] initWithFormat:@"location is %@", location]] message:nil delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alertView show];
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MicroMessengerAppDelegate = objc_getClass("MicroMessengerAppDelegate"); MSHookMessageEx(_logos_class$_ungrouped$MicroMessengerAppDelegate, @selector(application:didFinishLaunchingWithOptions:), (IMP)&_logos_method$_ungrouped$MicroMessengerAppDelegate$application$didFinishLaunchingWithOptions$, (IMP*)&_logos_orig$_ungrouped$MicroMessengerAppDelegate$application$didFinishLaunchingWithOptions$);Class _logos_class$_ungrouped$SeePeopleNearByLogicController = objc_getClass("SeePeopleNearByLogicController"); MSHookMessageEx(_logos_class$_ungrouped$SeePeopleNearByLogicController, @selector(onRetrieveLocationOK:), (IMP)&_logos_method$_ungrouped$SeePeopleNearByLogicController$onRetrieveLocationOK$, (IMP*)&_logos_orig$_ungrouped$SeePeopleNearByLogicController$onRetrieveLocationOK$);} }
#line 30 "/Users/qoocc03/Downloads/FakeWeChatLoc-master/fakeloc/fakeloc/fakeloc.xm"
