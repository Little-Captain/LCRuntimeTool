# LCRuntimeTool

[![Packagist](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://github.com/Little-Captain/LCRuntimeTool/blob/master/LICENSE)
[![Packagist](https://img.shields.io/badge/platform-iOS-brightgreen.svg)](https://github.com/Little-Captain/LCRuntimeTool/blob/master/README.md)
[![Packagist](https://img.shields.io/badge/pod-0.0.1-brightgreen.svg)](https://github.com/Little-Captain/LCRuntimeTool/blob/master/README.md)

Runtime Tool

---

# 中文介绍
轻量级的运行时工具库

# 安装
## CocoaPods
1. 在 `Podfile` 中添加 `pod 'LCRuntimeTool'`;
2. 执行 `pod install` 或 `pod update`;
3. 在需要使用的文件中使用 `#import <LCRuntimeTool.h>` 导入框架主头文件.

## 手动集成
1. 下载本工程或使用 `git clone` 命令克隆本工程.
2. 将 LCRuntimeTool 文件夹拖入你的工程中.
3. 在需要使用的文件中使用 `#import "LCRuntimeTool.h"` 导入框架主头文件.

# 系统要求
该框架最低支持 `iOS 8.0`.

# 使用方法
## 获取类的属性数组

```objective-c
- (void)testGetPropertiesList {
    
    NSLog(@"%@", [UITableView lc_propertiesList]);
}
```

## 获取类的成员变量数组

```objective-c
- (void)testGetIvarsList {
    
    NSLog(@"%@", [UITableView lc_ivarsList]);
}
```

## 获取类的继承链字符串

```objective-c
- (void)testGetClassInheritChain {
    
    NSLog(@"%@", [UITableView lc_classInheritChain]);
}
// 打印结果: UITableView -> UIScrollView -> UIView -> UIResponder -> NSObject
```

# 许可证
LCRuntimeTool 使用 MIT 许可证, 详情见 LICENSE 文件.

