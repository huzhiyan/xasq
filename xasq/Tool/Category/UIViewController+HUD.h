//
//  UIViewController+HUD.h
//  xasq
//
//  Created by dssj on 2019/7/29.
//  Copyright © 2019 dssj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (HUD)

- (void)loading;
- (void)loadingWithText:(NSString *)text;

- (void)showMessage:(NSString *)text;

- (void)hideHUD;

@end

NS_ASSUME_NONNULL_END
