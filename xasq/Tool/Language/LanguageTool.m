//
//  LanguageTool.m
//  xasq
//
//  Created by dssj on 2019/7/26.
//  Copyright © 2019 dssj. All rights reserved.
//

#import "LanguageTool.h"

static NSString *LanguageCacheKey = @"xasqLanguageCacheKey";

@implementation LanguageTool
    
///初始化语言
+ (void)initializeLanguage {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
//    //第一次进入，没有设置过语言
//    if (![userDefaults objectForKey:@"LanguageCacheKey"]) {
//        NSArray *languages = [userDefaults objectForKey:@"AppleLanguages"];
//        NSString *localLanguge = [languages objectAtIndex:0];
//
//        if ([localLanguge isEqualToString:@"zh-Hans"]) {
//            [userDefaults setObject:localLanguge forKey:LanguageCacheKey];
//        } else {
//            [userDefaults setObject:@"en" forKey:LanguageCacheKey];
//        }
//    }
    
    [userDefaults setObject:@"zh-Hans" forKey:LanguageCacheKey];
}
    
///根据不同的Key取对应语言的显示值
+ (NSString *)languageWithKey:(NSString *)key {
    
    NSString *localLanguge = [[NSUserDefaults standardUserDefaults] objectForKey:LanguageCacheKey];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:localLanguge ofType:@"lproj"];
    NSString *result = [[NSBundle bundleWithPath:path] localizedStringForKey:key value:nil table:nil];
    
    return result;
}
    
@end
