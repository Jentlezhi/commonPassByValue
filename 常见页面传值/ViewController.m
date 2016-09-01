//
//  ViewController.m
//  常见页面传值
//
//  Created by Jentle on 16/7/10.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"

@interface ViewController ()

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

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    twoVC.sourceVC = self;
    [self.navigationController pushViewController:twoVC animated:YES];
}


@end
