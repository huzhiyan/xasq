//
//  RootViewController.m
//  xasq
//
//  Created by dssj on 2019/7/26.
//  Copyright © 2019 dssj. All rights reserved.
//

#import "RootViewController.h"
#import "MainViewController.h"
#import "UserViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MainViewController *mainVC = [[MainViewController alloc] init];
    UserViewController *userVC = [[UserViewController alloc] init];
    
    self.viewControllers = @[mainVC,userVC];
    
    NSArray *titles = @[Language(@"HomeTitle"),Language(@"UserTitle")];
    for (int i = 0;i < self.tabBar.items.count;i++) {
        UITabBarItem *item = self.tabBar.items[i];
        item.title = titles[i];
    }
    
}

@end
