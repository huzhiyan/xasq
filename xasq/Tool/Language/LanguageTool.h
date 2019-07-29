//
//  LanguageTool.h
//  xasq
//
//  Created by dssj on 2019/7/26.
//  Copyright © 2019 dssj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LanguageTool : NSObject
    
+ (void)initializeLanguage;
    
+ (NSString *)languageWithKey:(NSString *)key;
    
@end

NS_ASSUME_NONNULL_END
