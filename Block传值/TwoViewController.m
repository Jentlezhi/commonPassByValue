//
//  TwoViewController.m
//  常见页面传值
//
//  Created by Jentle on 16/7/10.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import "TwoViewController.h"
#import "ViewController.h"
#include "ETBCLog.h"

@interface TwoViewController()

/** 输入框 */
@property(weak, nonatomic) UITextField *tf;

/** 显示框 */
@property(weak, nonatomic) UILabel *textLabel;

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
    
    
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.backgroundColor = [UIColor grayColor];
    textLabel.frame = CGRectMake(0, 0, 200, 30);
    textLabel.center = CGPointMake(self.view.center.x, self.view.center.y + 100);
    textLabel.textColor = [UIColor redColor];
    textLabel.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:textLabel];
    self.textLabel = textLabel;
    
#warning 在viewdidlaod里面写
    self.textLabel.text = self.name;
    
}

#warning 注意setter方法 此时控件还没有创建完成
- (void)setName:(NSString *)name{
    _name = name;
    //这里给控件赋值是错误的，控件还没有创建完成
    ETBCLogGreen(@"self.textLabel = %@",self.textLabel);
    self.textLabel.text = self.name;
}


- (void)addText{
    if (self.contentBlock) {
        self.contentBlock(self.tf.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
