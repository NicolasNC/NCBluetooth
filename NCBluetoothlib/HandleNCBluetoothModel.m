//
//  HandleNCBluetoothModel.m
//  NCBluetooth
//
//  Created by lishengfeng on 2019/10/14.
//  Copyright © 2019 Nicolas. All rights reserved.
//

#import "HandleNCBluetoothModel.h"
#import <CoreBluetooth/CoreBluetooth.h>
@interface HandleNCBluetoothModel()
@property(nonatomic,strong)CBCentralManager *manager;
@property(nonatomic,strong)NSMutableArray *peripherals;
@end
@implementation HandleNCBluetoothModel
+ (instancetype)defaultNCBluetoothModel{
    static HandleNCBluetoothModel *hbm = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        hbm = [[HandleNCBluetoothModel alloc]init];
    });
    return hbm;
}
@end
