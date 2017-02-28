//
//  LCRuntimeToolTests.m
//  LCRuntimeToolTests
//
//  Created by Liu-Mac on 2/9/17.
//  Copyright © 2017 Liu-Mac. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSObject+LCAdd.h"

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])

@interface Person : NSObject

/** name */
@property (nonatomic, strong) NSString *name;
/** age */
@property (nonatomic, assign) NSUInteger age;

@end

@implementation Person

@end

@interface LCRuntimeToolTests : XCTestCase

@end

@implementation LCRuntimeToolTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

/**
 获取类的属性列表
 */
- (void)testGetPropertiesList {
    
    NSLog(@"%@", [UITableView lc_propertiesList]);
}

/**
 获取类的属性列表
 */
- (void)testGetIvarsList {
    
    NSLog(@"%@", [UITableView lc_ivarsList]);
}

/**
 获取类的继承链
 */
- (void)testGetClassInheritChain {
    
    void (^testBlock)(void) = ^{
        NSLog(@"testBlock");
    };
    
    NSLog(@"%@", [[testBlock class] lc_classInheritChain]);
}

@end
