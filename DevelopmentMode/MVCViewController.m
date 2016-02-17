//
//  MVCViewController.m
//  DevelopmentMode
//
//  Created by MacBook on 16/2/17.
//  Copyright © 2016年 xm. All rights reserved.
//

#import "MVCViewController.h"
#import "Model.h"

@interface MVCViewController ()

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ChangeColor:(UIButton *)sender {
    
    self.view.backgroundColor = [Model color];
}
@end
