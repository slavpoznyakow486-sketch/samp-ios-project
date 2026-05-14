#import <UIKit/UIKit.h>
#import "Renderer.mm"

#ifdef __cplusplus
#include "../../app/src/main/cpp/main.cpp"
#endif

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = UIColor.blackColor;

    [Renderer startRender];

#ifdef __cplusplus
    main();
#endif

    NSLog(@"SAMP iOS started");
}
@end
