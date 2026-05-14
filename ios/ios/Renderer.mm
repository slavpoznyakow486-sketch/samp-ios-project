#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Renderer : NSObject
+ (void)startRender;
@end

@implementation Renderer

+ (void)startRender {
    NSLog(@"Renderer started");
}

@end
