#import "RCTConvert+GCKMediaSeekOptions.h"

#import "RCTConvert+GCKMediaResumeState.h"

@implementation RCTConvert (GCKMediaSeekOptions)

+ (GCKMediaSeekOptions *)GCKMediaSeekOptions:(id)json {
  GCKMediaSeekOptions *options = [[GCKMediaSeekOptions alloc] init];

  if (json[@"customData"]) {
    options.customData = [RCTConvert id:json[@"customData"]];
  }

  if (json[@"infinite"]) {
    options.seekToInfinite = [RCTConvert BOOL:json[@"infinite"]];
  }

  if (json[@"position"]) {
    options.interval = [RCTConvert double:json[@"position"]];
  }

  if (json[@"relative"]) {
    options.relative = [RCTConvert BOOL:json[@"relative"]];
  }

  if (json[@"resumeState"]) {
    options.resumeState = [RCTConvert GCKMediaResumeState:json[@"resumeState"]];
  }

  return options;
}

@end
