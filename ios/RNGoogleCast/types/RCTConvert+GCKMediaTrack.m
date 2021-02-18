#import "RCTConvert+GCKMediaTrack.h"

#import "RCTConvert+GCKMediaTextTrackSubtype.h"
#import "RCTConvert+GCKMediaTrackType.h"

@implementation RCTConvert (GCKMediaTrack)

+ (nonnull GCKMediaTrack *)GCKMediaTrack:(nonnull id)json {
  return [[GCKMediaTrack alloc]
      initWithIdentifier:[RCTConvert NSInteger:json[@"id"]]
       contentIdentifier:json[@"contentId"]
             contentType:json[@"contentType"]
                    type:[RCTConvert GCKMediaTrackType:json[@"type"]]
             textSubtype:[RCTConvert GCKMediaTextTrackSubtype:json[@"subtype"]]
                    name:json[@"name"]
            languageCode:json[@"language"]
              customData:json[@"customData"]];
}

+ (nonnull id)fromGCKMediaTrack:(nullable GCKMediaTrack *)track {
  if (track == nil) return [NSNull null];

  return @{
    @"id" : @(track.identifier),
    @"contentId" : track.contentIdentifier ?: [NSNull null],
    @"contentType" : track.contentType ?: [NSNull null],
    @"type" : [RCTConvert fromGCKMediaTrackType:track.type],
    @"subtype" : [RCTConvert fromGCKMediaTextTrackSubtype:track.textSubtype],
    @"name" : track.name ?: [NSNull null],
    @"language" : track.languageCode ?: [NSNull null],
    @"customData" : track.customData ?: [NSNull null],
  };
}

@end
