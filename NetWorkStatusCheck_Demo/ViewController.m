//
//  ViewController.m
//  NetWorkStatusCheck_Demo
//
//  Created by admin on 2016/10/31.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "NetWorkStatus.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NetWorkStatus *status = [[NetWorkStatus alloc] init];
    
    
    NSLog(@"current--->%ld",status.currentNetworkStates);
    
}





@end
