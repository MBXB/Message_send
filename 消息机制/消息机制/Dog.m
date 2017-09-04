//
//  Dog.m
//  消息机制
//
//  Created by 朗星 on 2017/9/1.
//  Copyright © 2017年 bixiangbei. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)setName:(NSString *)name{
    NSLog(@"狗狗吃了");
}

- (NSString *)name{
    return @"粑粑";
}
- (void)eat:(NSString *)food{
    NSLog(@"狗狗已经吃了%@",food);
}

@end
