//
//  ViewController.m
//  消息机制
//
//  Created by Oboe_b on 2017/9/1.
//  Copyright © 2017年 bixiangbei. All rights reserved.
//简书地址--http://www.jianshu.com/u/a437e8f87a81
//微博--http://weibo.com/6342211709/profile?rightmod=1&wvr=6&mod=personinfo

#import "ViewController.h"
#import "Dog.h"
#import <objc/message.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //调用方法
    Dog *dog = [Dog new];
    NSString *str = [dog name];
    str = @"大黄";
    dog.name = str;
    NSLog(@"%@",[dog name]);
    
//    [dog eat];
    //调用对象方法
//     [dog performSelector:@selector(eat)];
    //OC属于动态调用,运行的时候才回去给一个类分配内存空间.C静态调用
    //给狗狗对象发送eat消息IMP方法实现
//    objc_msgSend(dog, @selector(eat));
    objc_msgSend(dog, @selector(eat:), @"粑粑");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
