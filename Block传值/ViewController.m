//
//  ViewController.m
//  Block传值
//
//  Created by Jentle on 16/7/10.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import "ViewController.h"
#import "ETBCLog.h"
#import "TwoViewController.h"

@interface ViewController ()

/** textLabel */
@property(weak, nonatomic) UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.backgroundColor = [UIColor grayColor];
    textLabel.frame = CGRectMake(0, 0, 200, 30);
    textLabel.center = self.view.center;
    textLabel.textColor = [UIColor redColor];
    textLabel.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:textLabel];
    self.textLabel = textLabel;
    
    
}
/*
 block:匿名函数。类似于函数指针，先定义函数，保存起来
 用到的时候再调用（快捷获得block定义格式inlineBlock）
 */
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    ETBCLogRed(@"BEFORE %@",twoVC.contentBlock);
    twoVC.contentBlock = ^(NSString *content){
        self.textLabel.text = content;//定义，保存起来
    };
    //正向传值
    twoVC.name = @"有值啦~";
    ETBCLogRed(@"AFTER %@",twoVC.contentBlock);
    [self.navigationController pushViewController:twoVC animated:YES];
}

@end
