//
//  NetWorkStatus.m
//  NetWorkStatusCheck_Demo
//
//  Created by admin on 2016/10/31.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "NetWorkStatus.h"
#import "AppDelegate.h"
@implementation NetWorkStatus
///判断当前网络状态
- (VZNetworkStates)currentNetworkStates {
    //拿到状态栏的子视图
    NSArray *subViews = [[[[UIApplication sharedApplication] valueForKeyPath:@"statusBar"] valueForKeyPath:@"foregroundView"] subviews];
    //保存网络状态码
    VZNetworkStates state = VZNetworkStatesUnknown;
    for (id child in subViews) {
        if ([child isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {
            NSLog(@"childNetwork:%@",child);
            //获取到状态栏码
            NSInteger currentNetworkCode = [[child valueForKeyPath:@"dataNetworkType"] intValue];
            // NSLog(@"currentNetworkCode==%tu",currentNetworkCode);
            switch (currentNetworkCode) {
                case 0:
                    state = VZNetworkStatesUnknown;
                    break;
                case 1:
                    state = VZNetworkStates2G;
                    break;
                case 2:
                    state = VZNetworkStates3G;
                    break;
                case 3:
                    state = VZNetworkStates4G;
                    break;
                case 4 | 5://可以打印当前状态码来确定状态码的准确性
                    state = VZNetworkStatesWifi;
                    break;
                default:
                    break;
            }
        }
    }
    
    return state;
    
}

@end
