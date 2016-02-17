//
//  ProtocolViewController.m
//  DevelopmentMode
//
//  Created by MacBook on 16/2/17.
//  Copyright © 2016年 xm. All rights reserved.
//

#import "ProtocolViewController.h"


@interface ProtocolViewController ()


@end

@implementation ProtocolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)protocol:(UIButton *)sender {
    
    if([self.delegate respondsToSelector:@selector(log)]){
        [self.delegate log];
    }
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
