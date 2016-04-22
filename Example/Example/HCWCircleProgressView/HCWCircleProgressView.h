//
//  HCWCircleProgressView.h
//  Example
//
//  Created by HCW on 16/4/22.
//  Copyright © 2016年 HCW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HCWCircleProgressView : UIView

@property (nonatomic, assign) CGFloat lineWidth;    ///< 进度条宽度
@property (nonatomic, assign) CGFloat circleMargin; ///< 进度条离边线的距离

@property (nonatomic, assign) CGFloat progressValue;

@end
