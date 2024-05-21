#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(EventEmitter, NSObject)

RCT_EXTERN_METHOD(on:(NSString *)event listener:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(emit:(NSString *)event arg:(id)arg)

@end
