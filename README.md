# MMFastCoding
## 更高效的数据本地储存，本例实现对fastCoding 的封装，通过单例全局操作

### 使用方法如下：

导入头文件`MMFastCoding.h`

```
 [[MMFastCoding shareInstance] storeValue:@{@"name":@"mss",@"age":@"20"} withKey:@"msss"];
```

```
	NSLog(@"%@",[[MMFastCoding shareInstance] valueWithKey:@"msss"]);
```

> 此封装可以储存任意的数据，数组，字典，对象等等遵循`nscoding`协议的数据    