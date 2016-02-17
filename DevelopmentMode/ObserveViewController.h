//
//  ObserveViewController.h
//  DevelopmentMode
//  观察者模式-不关心谁去接收，只负责发布信息
//  Created by MacBook on 16/2/17.
//  Copyright © 2016年 xm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObserveViewController : UIViewController
- (IBAction)sendMessage:(UIButton *)sender;
- (IBAction)KVC:(UIButton *)sender;
- (IBAction)KVO:(UIButton *)sender;

@end
