//
//  NetWorkStatus.h
//  NetWorkStatusCheck_Demo
//
//  Created by admin on 2016/10/31.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,VZNetworkStates) {
    VZNetworkStatesUnknown,//未知
    VZNetworkStates2G,//2G
    VZNetworkStates3G,//3G
    VZNetworkStates4G,//4G
    VZNetworkStatesWifi,//Wifi
};


@interface NetWorkStatus : NSObject

///判断当前网络状态
- (VZNetworkStates)currentNetworkStates;


@end
