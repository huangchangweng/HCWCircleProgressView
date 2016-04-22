//
//  HCWCircleProgressView.m
//  Example
//
//  Created by HCW on 16/4/22.
//  Copyright © 2016年 HCW. All rights reserved.
//

#import "HCWCircleProgressView.h"

@interface HCWCircleProgressView ()
@property (nonatomic, strong) CAShapeLayer *circleShapeLayer;
@end

@implementation HCWCircleProgressView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.circleShapeLayer.lineWidth = self.lineWidth;
    
    CGRect backCircleFrame = CGRectMake(self.circleMargin, self.circleMargin, self.bounds.size.width-2*self.circleMargin, self.bounds.size.width-2*self.circleMargin);
    CGFloat radius = self.bounds.size.width/2.0-self.circleMargin;
    
    self.circleShapeLayer.frame = backCircleFrame;
    self.circleShapeLayer.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(radius, radius)
                                                                radius:radius-self.lineWidth/2
                                                            startAngle:-M_PI/2
                                                              endAngle:M_PI/180*270
                                                             clockwise:YES].CGPath;
    
}

- (void)commonInit
{
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.6];
    self.lineWidth = 4;
    self.circleMargin = 5;
    
    // circleShapeLayer
    self.circleShapeLayer = [CAShapeLayer layer];
    self.circleShapeLayer.strokeStart = 0;
    self.circleShapeLayer.strokeEnd = 0.8;
    self.circleShapeLayer.lineCap = @"round";
    self.circleShapeLayer.fillColor = [UIColor clearColor].CGColor;
    self.circleShapeLayer.strokeColor = [UIColor whiteColor].CGColor;
    self.circleShapeLayer.backgroundColor = [UIColor clearColor].CGColor;
    [self.layer addSublayer:self.circleShapeLayer];
}

-(void)setProgressValue:(CGFloat)progressValue{
    if (self.circleShapeLayer) {
        self.circleShapeLayer.strokeEnd = progressValue;
    }
}

@end
