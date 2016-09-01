//
//  TwoViewController.h
//  常见页面传值
//
//  Created by Jentle on 16/7/10.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwoViewController : UIViewController

/** block */
@property(copy, nonatomic) void(^contentBlock)(NSString *);

/** 正向传值 */
@property(copy, nonatomic) NSString *name;

@end
