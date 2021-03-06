//
//  NSObject+LCAdd.m
//
//  Created by Liu-Mac on 4/11/2016.
//  Copyright © 2016 Liu-Mac. All rights reserved.
//

#import "NSObject+LCAdd.h"
#import <objc/runtime.h>

@implementation NSObject (LCAdd)

static void * const propertiesKey = "lc.propertiesList";

+ (NSArray *)lc_propertiesList {
    
    // 获取关联对象, 这一步用于提高此方法的效率
    NSArray *result = objc_getAssociatedObject(self, propertiesKey);
    
    if (result != nil) {
        // result 有值, 直接返回
        return result;
    }
    
    unsigned int count = 0;
    objc_property_t *list = class_copyPropertyList([self class], &count);
    
    // 遍历所有的属性
    NSMutableArray *arrayM = [NSMutableArray array];
    for (unsigned int i = 0; i < count; i++) {
        
        objc_property_t pty = list[i];
        
        // 获取 property 名称
        const char *cName = property_getName(pty);
        NSString *name = [NSString stringWithUTF8String:cName];
        
        [arrayM addObject:name];
    }
    
    // 释放属性列表
    free(list);
    
    // 设置关联对象
    objc_setAssociatedObject(self, propertiesKey, arrayM, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    return objc_getAssociatedObject(self, propertiesKey);
}

static void * const ivarsKey = "lc.ivarsList";

+ (NSArray *)lc_ivarsList {
    
    // 获取关联对象
    NSArray *result = objc_getAssociatedObject(self, ivarsKey);
    
    if (result != nil) {
        // result 有值, 直接返回
        return result;
    }
    
    unsigned int count = 0;
    Ivar *list = class_copyIvarList([self class], &count);
    
    // 遍历所有的属性
    NSMutableArray *arrayM = [NSMutableArray array];
    for (unsigned int i = 0; i < count; i++) {
        
        Ivar ivar = list[i];
        
        // 获取 ivar 名称
        const char *cName = ivar_getName(ivar);
        NSString *name = [NSString stringWithUTF8String:cName];
        
        [arrayM addObject:name];
    }
    
    // 释放成员变量列表
    free(list);
    
    // 设置关联对象
    objc_setAssociatedObject(self, ivarsKey, arrayM, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    return objc_getAssociatedObject(self, ivarsKey);
}

+ (NSString *)lc_classInheritChain {
    
    NSMutableString *chainStr = [NSMutableString string];
    Class tmpCls = [self class];
    while ([NSObject class] != tmpCls) {
        [chainStr appendFormat:@"%@ -> ", NSStringFromClass(tmpCls)];
        tmpCls = class_getSuperclass(tmpCls);
    }
    [chainStr appendString:NSStringFromClass([NSObject class])];
    
    return chainStr.copy;
}

@end
