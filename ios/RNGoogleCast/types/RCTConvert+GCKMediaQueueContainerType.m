#import "RCTConvert+GCKMediaQueueContainerType.h"

@implementation RCTConvert (GCKMediaQueueContainerType)

RCT_ENUM_CONVERTER(GCKMediaQueueContainerType, (@{
                     @"audioBook" : @(GCKMediaQueueContainerTypeAudioBook),
                   }),
                   GCKMediaQueueContainerTypeGeneric, integerValue)

+ (nonnull id)fromGCKMediaQueueContainerType:(GCKMediaQueueContainerType)type {
  switch (type) {
  case GCKMediaQueueContainerTypeAudioBook:
    return @"audioBook";
  default:
    return [NSNull null];
  }
}

@end
