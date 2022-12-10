#import "IosPlistPlugin.h"
#if __has_include(<ios_plist/ios_plist-Swift.h>)
#import <ios_plist/ios_plist-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ios_plist-Swift.h"
#endif

@implementation IosPlistPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIosPlistPlugin registerWithRegistrar:registrar];
}
@end
