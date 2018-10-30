//
//  RemoteViewController.m
//  MRVLCPlayer
//
//  Created by juntuo on 2018/10/30.
//  Copyright © 2018 juntuo. All rights reserved.
//

#import "RemoteViewController.h"
#import "MRVLCPlayer.h"
@interface RemoteViewController ()

@end

@implementation RemoteViewController
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
- (IBAction)remoteAction:(id)sender {
    MRVLCPlayer *player = [[MRVLCPlayer alloc] init];

    player.bounds = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width / 16 * 9);
    player.center = self.view.center;
    player.mediaURL = [NSURL URLWithString:@"http://202.198.176.113/video002/2015/mlrs.rmvb"];

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
