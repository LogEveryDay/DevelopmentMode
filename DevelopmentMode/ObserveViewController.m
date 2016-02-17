//
//  ObserveViewController.m
//  DevelopmentMode
//
//  Created by MacBook on 16/2/17.
//  Copyright © 2016年 xm. All rights reserved.
//

#import "ObserveViewController.h"
#import "KVC.h"
#import "KVO.h"

@interface ObserveViewController ()

@property (nonatomic, strong) KVC *kvcModel;

@property (nonatomic, strong) KVO *kvoModel;

@end

@implementation ObserveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _kvcModel = [[KVC alloc] init];
    
    _kvoModel = [[KVO alloc] init];
    
    [_kvoModel addObserver:self forKeyPath:@"name" options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld) context:nil];
    
    [_kvoModel addObserver:self forKeyPath:@"age" options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld) context:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark 通知中心
- (IBAction)sendMessage:(UIButton *)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"sendMessage" object:nil];;
}
#pragma mark KVC
/*
 * 在属性没有setter、getter方法时，依然可以使用KVC模式修改属性值
 */
- (IBAction)KVC:(UIButton *)sender {
   

    NSLog(@"name:%@",[_kvcModel valueForKey:@"name"]);
    NSLog(@"age:%@",[_kvcModel valueForKey:@"age"]);
    
    [_kvcModel setValue:@"小马" forKey:@"name"];
    [_kvcModel setValue:[NSNumber numberWithInt:31] forKey:@"age"];
    
    NSLog(@"name:%@",[_kvcModel valueForKey:@"name"]);
    NSLog(@"age:%@",[_kvcModel valueForKey:@"age"]);
}
#pragma mark KVO
/*
 *KVO 就是基于 KVC 实现的关键技术之一。
 * 每次指定的被观察的对象的属性被修改后，KVO就会自动通知相应的观察者。
 */
- (IBAction)KVO:(UIButton *)sender {
    
    [_kvoModel setValue:@"小马" forKey:@"name"];
    [_kvoModel setValue:[NSNumber numberWithInt:31] forKey:@"age"];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    
    
    NSLog(@"KVO 属性变化观察 ： %@",change);
}


@end
