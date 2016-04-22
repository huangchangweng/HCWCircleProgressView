//
//  HCWCircleProgressView.h
//  Example
//
//  Created by HCW on 16/4/22.
//  Copyright © 2016年 HCW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HCWCircleProgressView : UIView

@property (nonatomic, assign) CGFloat progressWidth;    ///< 进度条宽度，defult is 4
@property (nonatomic, assign) CGFloat progressMargin;   ///< 进度条离边线的距离，defult is 5
@property (nonatomic, strong) UIColor *progressCorlor;  ///< 进度条颜色，defult is whiteColor
@property (nonatomic, assign) BOOL isCircle;            ///< 是否为圆形，defult is NO

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, assign) CGFloat progressValue;

@end
