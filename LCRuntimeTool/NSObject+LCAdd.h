//
//  NSObject+LCAdd.h
//
//  Created by Liu-Mac on 4/11/2016.
//  Copyright © 2016 Liu-Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LCAdd)

#pragma mark - 获取类信息

/**
 返回当前类的属性数组
 
 @return 属性数组
 */
+ (NSArray *)lc_propertiesList;

/**
 返回当前类的成员变量数组
 
 @return 成员变量数组
 */
+ (NSArray *)lc_ivarsList;

/**
 返回当前类的继承链字符串
 
 @return 继承链字符串
 */
+ (NSString *)lc_classInheritChain;

@end
