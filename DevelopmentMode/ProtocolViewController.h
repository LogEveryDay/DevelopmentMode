//
//  ProtocolViewController.h
//  DevelopmentMode
//  代理模式-当一个类的某些功能需要由别的类来实现，但是又不确定具体会是哪个类实现。
//  Created by MacBook on 16/2/17.
//  Copyright © 2016年 xm. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModeDelegate <NSObject>

- (void)log;

@end

@interface ProtocolViewController : UIViewController


@property (nonatomic, assign) id<ModeDelegate>delegate;

- (IBAction)protocol:(UIButton *)sender;
@end


