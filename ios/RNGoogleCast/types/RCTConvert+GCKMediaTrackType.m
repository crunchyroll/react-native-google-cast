#import "RCTConvert+GCKMediaTrackType.h"

@implementation RCTConvert (GCKMediaTrackType)

RCT_ENUM_CONVERTER(GCKMediaTrackType, (@{
                     @"audio" : @(GCKMediaTrackTypeAudio),
                     @"text" : @(GCKMediaTrackTypeText),
                     @"video" : @(GCKMediaTrackTypeVideo),
                   }),
                   GCKMediaTrackTypeUnknown, integerValue)

+ (nonnull id)fromGCKMediaTrackType:(GCKMediaTrackType)trackType {
  switch (trackType) {
  case GCKMediaTrackTypeAudio:
    return @"audio";
  case GCKMediaTrackTypeText:
    return @"text";
  case GCKMediaTrackTypeVideo:
    return @"video";
  default:
    return [NSNull null];
  }
}

@end
