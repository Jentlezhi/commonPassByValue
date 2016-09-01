//
//  TwoViewController.h
//  常见页面传值
//
//  Created by Jentle on 16/7/10.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface TwoViewController : UIViewController

/** 源控制器 */
@property(strong, nonatomic) ViewController *sourceVC;

@end
