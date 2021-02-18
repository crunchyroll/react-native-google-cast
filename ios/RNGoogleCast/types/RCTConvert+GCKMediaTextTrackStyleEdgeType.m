#import "RCTConvert+GCKMediaTextTrackStyleEdgeType.h"

@implementation RCTConvert (GCKMediaTextTrackStyleEdgeType)

RCT_ENUM_CONVERTER(GCKMediaTextTrackStyleEdgeType, (@{
                     @"depressed" : @(GCKMediaTextTrackStyleEdgeTypeDepressed),
                     @"dropShadow" :
                         @(GCKMediaTextTrackStyleEdgeTypeDropShadow),
                     @"none" : @(GCKMediaTextTrackStyleEdgeTypeNone),
                     @"outline" : @(GCKMediaTextTrackStyleEdgeTypeOutline),
                     @"raised" : @(GCKMediaTextTrackStyleEdgeTypeRaised),
                   }),
                   GCKMediaTextTrackStyleEdgeTypeUnknown, integerValue)

+ (nonnull id)fromGCKMediaTextTrackStyleEdgeType:(GCKMediaTextTrackStyleEdgeType)type {
  switch (type) {
  case GCKMediaTextTrackStyleEdgeTypeDepressed:
    return @"depressed";
  case GCKMediaTextTrackStyleEdgeTypeDropShadow:
    return @"dropShadow";
  case GCKMediaTextTrackStyleEdgeTypeNone:
    return @"none";
  case GCKMediaTextTrackStyleEdgeTypeOutline:
    return @"outline";
  case GCKMediaTextTrackStyleEdgeTypeRaised:
    return @"raised";
  default:
    return [NSNull null];
  }
}

@end
