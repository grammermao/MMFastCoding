//***********************************************
//        github：https://github.com/grammermao
//***********************************************
//        文件：MMFastCoder.h
//        版权：  Copyright © 2017年 Ims. All rights reserved.
//**********************************************

#import <Foundation/Foundation.h>

@interface MMFastCoder : NSObject
+(instancetype)managerCenter;

//储存数据
-(void)storeValue:(id)value withKey:(NSString *)key;

//读取数据
-(id)valueWithKey:(NSString *)key;
@end
