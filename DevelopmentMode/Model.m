//
//  Model.m
//  DevelopmentMode
//
//  Created by MacBook on 16/2/17.
//  Copyright © 2016年 xm. All rights reserved.
//

#import "Model.h"

@implementation Model

+ (UIColor*)color{
    
    UIColor *co = [UIColor colorWithHue:arc4random()%255/255.0 saturation:arc4random()%255/255.0 brightness:arc4random()%255/255.0 alpha:1];
    return co;
}

@end
