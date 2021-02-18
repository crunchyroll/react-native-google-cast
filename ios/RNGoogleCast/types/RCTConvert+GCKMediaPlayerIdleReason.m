#import "RCTConvert+GCKMediaPlayerIdleReason.h"

@implementation RCTConvert (GCKMediaPlayerIdleReason)

RCT_ENUM_CONVERTER(GCKMediaPlayerIdleReason, (@{
                     @"cancelled" : @(GCKMediaPlayerIdleReasonCancelled),
                     @"error" : @(GCKMediaPlayerIdleReasonError),
                     @"finished" : @(GCKMediaPlayerIdleReasonFinished),
                     @"interrupted" : @(GCKMediaPlayerIdleReasonInterrupted),
                   }),
                   GCKMediaPlayerIdleReasonNone, integerValue)

+ (nonnull id)fromGCKMediaPlayerIdleReason:(GCKMediaPlayerIdleReason)reason {
  switch (reason) {
  case GCKMediaPlayerIdleReasonCancelled:
    return @"cancelled";
  case GCKMediaPlayerIdleReasonError:
    return @"error";
  case GCKMediaPlayerIdleReasonFinished:
    return @"finished";
  case GCKMediaPlayerIdleReasonInterrupted:
    return @"interrupted";
  default:
    return [NSNull null];
  }
}

@end
