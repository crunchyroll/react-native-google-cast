#import "RCTConvert+GCKMediaTextTrackStyle.h"

#import "RCTConvert+GCKColor.h"
#import "RCTConvert+GCKMediaTextTrackStyleEdgeType.h"
#import "RCTConvert+GCKMediaTextTrackStyleFontGenericFamily.h"
#import "RCTConvert+GCKMediaTextTrackStyleFontStyle.h"
#import "RCTConvert+GCKMediaTextTrackStyleWindowType.h"

@implementation RCTConvert (GCKMediaTextTrackStyle)

+ (GCKMediaTextTrackStyle *)GCKMediaTextTrackStyle:(id)json {
  GCKMediaTextTrackStyle *style = [[GCKMediaTextTrackStyle alloc] init];

  if (json[@"backgroundColor"]) {
    style.backgroundColor = [RCTConvert GCKColor:json[@"backgroundColor"]];
  }

  if (json[@"customData"]) {
    style.customData = [RCTConvert id:json[@"customData"]];
  }

  if (json[@"edgeColor"]) {
    style.edgeColor = [RCTConvert GCKColor:json[@"edgeColor"]];
  }
  
  if (json[@"edgeType"]) {
    style.edgeType = [RCTConvert GCKMediaTextTrackStyleEdgeType:json[@"edgeType"]];
  }

  if (json[@"fontFamily"]) {
    style.fontFamily = [RCTConvert NSString:json[@"fontFamily"]];
  }

  if (json[@"fontGenericFamily"]) {
    style.fontGenericFamily = [RCTConvert GCKMediaTextTrackStyleFontGenericFamily:json[@"fontGenericFamily"]];
  }
  
  if (json[@"fontScale"]) {
    style.fontScale = [RCTConvert CGFloat:json[@"fontScale"]];
  }

  if (json[@"foregroundColor"]) {
    style.foregroundColor = [RCTConvert GCKColor:json[@"foreroundColor"]];
  }
  
  if (json[@"windowColor"]) {
    style.windowColor = [RCTConvert GCKColor:json[@"windowColor"]];
  }

  if (json[@"windowCornerRadius"]) {
    style.windowRoundedCornerRadius = [RCTConvert int:json[@"windowCornerRadius"]];
  }
  
  if (json[@"windowType"]) {
    style.windowType = [RCTConvert GCKMediaTextTrackStyleWindowType:json[@"windowType"]];
  }
  
  return style;
}

+ (nonnull id)fromGCKMediaTextTrackStyle:(nullable GCKMediaTextTrackStyle *)style {
  if (style == nil) return [NSNull null];

  return @{
    @"backgroundColor" : [RCTConvert fromGCKColor:style.backgroundColor],
    
    @"customData" : style.customData ?: [NSNull null],
    
    @"edgeColor" : [RCTConvert fromGCKColor:style.edgeColor],
    
    @"edgeType" : [RCTConvert fromGCKMediaTextTrackStyleEdgeType:style.edgeType],
    
    @"fontFamily" : style.fontFamily ?: [NSNull null],
    
    @"fontGenericFamily" : [RCTConvert fromGCKMediaTextTrackStyleFontGenericFamily:style.fontGenericFamily],
    
    @"fontScale": @(style.fontScale),
    
    @"foregroundColor": [RCTConvert fromGCKColor:style.foregroundColor],
    
    @"windowColor": [RCTConvert fromGCKColor:style.windowColor],
    
    @"windowCornerRadius": @(style.windowRoundedCornerRadius),
    
    @"windowType": [RCTConvert fromGCKMediaTextTrackStyleWindowType:style.windowType],
  };
}

@end
