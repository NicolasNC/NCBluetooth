//
//  ViewController.m
//  NCBluetooth
//
//  Created by Nicolas on 2019/10/14.
//  Copyright © 2019 Nicolas. All rights reserved.
//

#import "ViewController.h"
#import "SendViewController.h"
#import "AcceptViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width*0.5-50, 200, 100, 60)];
    button.titleLabel.textColor = [UIColor whiteColor];
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"主设备" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(mainAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button2 = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width*0.5-50, button.frame.origin.y+button.frame.size.height+20, 100, 60)];
    button2.titleLabel.textColor = [UIColor whiteColor];
    button2.backgroundColor = [UIColor orangeColor];
    [button2 setTitle:@"从设备" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(secondAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
}
- (void)mainAction{
    SendViewController *svc = [[SendViewController alloc]init];
    [self.navigationController pushViewController:svc animated:true];
}
- (void)secondAction{
    AcceptViewController *avc = [[AcceptViewController alloc]init];
    [self.navigationController pushViewController:avc animated:true];
}
@end
