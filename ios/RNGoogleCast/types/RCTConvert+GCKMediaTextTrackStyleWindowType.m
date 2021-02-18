#import "RCTConvert+GCKMediaTextTrackStyleWindowType.h"

@implementation RCTConvert (GCKMediaTextTrackStyleWindowType)

RCT_ENUM_CONVERTER(GCKMediaTextTrackStyleWindowType, (@{
                     @"none" : @(GCKMediaTextTrackStyleWindowTypeNone),
                     @"normal" : @(GCKMediaTextTrackStyleWindowTypeNormal),
                     @"rounded" :
                         @(GCKMediaTextTrackStyleWindowTypeRoundedCorners),
                   }),
                   GCKMediaTextTrackStyleWindowTypeUnknown, integerValue)

+ (nonnull id)fromGCKMediaTextTrackStyleWindowType:
    (GCKMediaTextTrackStyleWindowType)type {
  switch (type) {
  case GCKMediaTextTrackStyleWindowTypeNone:
    return @"none";
  case GCKMediaTextTrackStyleWindowTypeNormal:
    return @"normal";
  case GCKMediaTextTrackStyleWindowTypeRoundedCorners:
    return @"rounded";
  default:
    return [NSNull null];
  }
}

@end
