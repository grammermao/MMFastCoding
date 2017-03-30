//***********************************************
//        github：https://github.com/grammermao
//***********************************************
//        文件：MMFastCoder.m
//        版权：  Copyright © 2017年 Ims. All rights reserved.
//**********************************************

#import "MMFastCoder.h"
#import "FastCoder.h"

static MMFastCoder *manager =nil;

@implementation MMFastCoder

+(instancetype)managerCenter{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager =[[MMFastCoder alloc]init];
    });
    return manager;
}

//储存数据
-(void)storeValue:(id)value withKey:(NSString *)key{
    NSData *data =[FastCoder dataWithRootObject:value];
    if (data) {
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    }
}

//读取数据
-(id)valueWithKey:(NSString *)key{
    NSData *data =[[NSUserDefaults standardUserDefaults]objectForKey:key];
    return [FastCoder objectWithData:data];
}


@end
