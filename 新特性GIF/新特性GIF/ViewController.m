//
//  ViewController.m
//  新特性GIF
//
//  Created by 郭绍彬 on 16/8/24.
//  Copyright © 2016年 郭绍彬. All rights reserved.
//

#import "ViewController.h"
#import <YYWebImage/YYWebImage.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageView = [[YYAnimatedImageView alloc]init];
    imageView.backgroundColor=[UIColor redColor];
    imageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height/2);
    //    /Users/ringier/Desktop/demo/自己的/新特性GIF/新特性GIF/dandan.gif
    imageView.yy_imageURL = [NSURL fileURLWithPath:@"/Users/shiyujin/Downloads/新特性GIF/新特性GIF/dandan.gif"];
    [self.view addSubview:imageView];
    
    NSLog(@"点击屏幕进入主页面");
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"dandanRootViewController" object:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
