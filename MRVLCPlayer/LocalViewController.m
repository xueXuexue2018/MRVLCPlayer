//
//  LocalViewController.m
//  MRVLCPlayer
//
//  Created by juntuo on 2018/10/30.
//  Copyright © 2018 juntuo. All rights reserved.
//

#import "LocalViewController.h"
#import "MRVLCPlayer.h"
@interface LocalViewController ()

@end

@implementation LocalViewController
- (void)viewDidAppear:(BOOL)animated{

    [super viewDidAppear:animated];

    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]) {

        [self prefersStatusBarHidden];

        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];

    }

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)localAction:(id)sender {
    MRVLCPlayer *player = [[MRVLCPlayer alloc] init];

    player.bounds = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width / 16 * 9);
    player.center = self.view.center;
    //    player.mediaURL = [[NSBundle mainBundle] URLForResource:@"1" withExtension:@"mkv"];

    player.mediaURL = [NSURL fileURLWithPath:@"/Users/juntuo/Desktop/MRVLCPlayer/MRVLCPlayer/Resource/02.mov"];

    [player showInView:self.view.window];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
