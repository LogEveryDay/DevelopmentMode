//
//  ViewController.m
//  DevelopmentMode
//
//  Created by MacBook on 16/2/17.
//  Copyright © 2016年 xm. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolViewController.h"
#import "ObserveViewController.h"
#import "MVCViewController.h"

@interface ViewController ()<ModeDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //注册观察
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - 代理
- (IBAction)protocolAction:(UIButton *)sender {
    
    ProtocolViewController *protocolVC = [[ProtocolViewController alloc] init];
    protocolVC.delegate = self;
    
    [self presentViewController:protocolVC animated:YES completion:nil];
}

- (void)log{
    
    NSLog(@"我是代理方法");
}
#pragma mark - 观察者
- (IBAction)observeAction:(UIButton *)sender {
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(observe:) name:@"sendMessage" object:nil];
    ObserveViewController *observeVC = [[ObserveViewController alloc]init];
    [self presentViewController:observeVC animated:YES completion:nil];
}

- (void)observe:(NSNotification*)not{
    
    NSLog(@"我是 NSNotificationCenter 观察者方法");
    
}

- (IBAction)MVCAction:(UIButton *)sender {
    
    
    MVCViewController *mvc = [[MVCViewController alloc] init];
    [self presentViewController:mvc animated:YES completion:nil];
}

- (IBAction)SingletonAction:(UIButton *)sender {
}

- (IBAction)strategyAction:(UIButton *)sender {
}

- (IBAction)factoryAction:(UIButton *)sender {
}
@end
