//
//  TwoViewController.m
//  常见页面传值
//
//  Created by Jentle on 16/7/10.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import "TwoViewController.h"
#import "ViewController.h"

@interface TwoViewController()

/** 输入框 */
@property(weak, nonatomic) UITextField *tf;

@end

@implementation TwoViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    UITextField *tf = [[UITextField alloc] init];
    tf.backgroundColor = [UIColor grayColor];
    tf.frame = CGRectMake(0, 0, 200, 30);
    tf.center = self.view.center;
    [self.view addSubview:tf];
    self.tf = tf;
    
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    addBtn.frame = CGRectMake(0, 0, 40, 20);
    addBtn.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
    [addBtn setTitle:@"添加" forState:UIControlStateNormal];
    [addBtn addTarget:self action:@selector(addText) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:addBtn];
    
}


- (void)addText{
    if ([self.delegate respondsToSelector:@selector(TwoViewController:didClickAddBtnWithContent:)]) {
        [self.delegate TwoViewController:self didClickAddBtnWithContent:self.tf.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
