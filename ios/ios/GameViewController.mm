#import <UIKit/UIKit.h>

#ifdef __cplusplus
#include "../../app/src/main/cpp/main.cpp"
#endif

@interface GameViewController : UIViewController
@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = UIColor.blackColor;

#ifdef __cplusplus
    // запуск ядра
    main();
#endif

    NSLog(@"SAMP iOS started");
}

@end
