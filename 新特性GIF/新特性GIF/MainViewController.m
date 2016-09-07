//
//  MainViewController.m
//  新特性GIF
//
//  Created by 郭绍彬 on 16/8/24.
//  Copyright © 2016年 郭绍彬. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *lbl = [[UILabel alloc]init];
    
    lbl.frame = CGRectMake(100, 100, [UIScreen mainScreen].bounds.size.width - 30, 100);
    lbl.center = self.view.center;

    lbl.numberOfLines = 0;
    lbl.text = @"不会再出现新特性了除非卸了,如果想每次运行都出现新特性在AppDelegate里把isNewVersion的返回值改为YES就可以了";
    [self.view addSubview:lbl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
