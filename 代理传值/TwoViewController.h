//
//  TwoViewController.h
//  常见页面传值
//
//  Created by Jentle on 16/7/10.
//  Copyright © 2016年 Jentle. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TwoViewController;

@protocol TwoViewControllerDelegate <NSObject>

@optional
- (void)TwoViewController:(TwoViewController *)tVC didClickAddBtnWithContent:(NSString *)content;
@end

@interface TwoViewController : UIViewController


/** delegate */
@property(weak, nonatomic) id<TwoViewControllerDelegate>delegate;


@end
