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
    
    self.circleShapeLayer.lineWidth = self.progressWidth;
    self.circleShapeLayer.strokeColor = self.progressCorlor.CGColor;
    
    CGRect backCircleFrame = CGRectMake(self.progressMargin, self.progressMargin, self.bounds.size.width-2*self.progressMargin, self.bounds.size.width-2*self.progressMargin);
    CGFloat radius = self.bounds.size.width/2.0-self.progressMargin;
    
    self.circleShapeLayer.frame = backCircleFrame;
    self.circleShapeLayer.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(radius, radius)
                                                                radius:radius-self.progressWidth/2
                                                            startAngle:-M_PI/2
                                                              endAngle:M_PI/180*270
                                                             clockwise:YES].CGPath;
    if (self.isCircle) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = self.bounds.size.width/2.0;
    }
    
    self.titleLabel.center = (CGPoint){self.bounds.size.width/2.0, self.bounds.size.width/2.0};
    self.titleLabel.textColor = self.progressCorlor;
    
}

- (void)commonInit
{
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.6];
    self.progressWidth = 4;
    self.progressMargin = 5;
    self.isCircle = NO;
    self.progressCorlor = [UIColor whiteColor];
    
    // circleShapeLayer
    self.circleShapeLayer = [CAShapeLayer layer];
    self.circleShapeLayer.strokeStart = 0;
    self.circleShapeLayer.strokeEnd = 0.8;
    self.circleShapeLayer.lineCap = @"round";
    self.circleShapeLayer.fillColor = [UIColor clearColor].CGColor;
    self.circleShapeLayer.strokeColor = [UIColor whiteColor].CGColor;
    self.circleShapeLayer.backgroundColor = [UIColor clearColor].CGColor;
    [self.layer addSublayer:self.circleShapeLayer];
    
    // titleLabel
    self.titleLabel = [UILabel new];
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    self.titleLabel.text = @"0%";
    [self.titleLabel sizeToFit];
    [self addSubview:self.titleLabel];
}

-(void)setProgressValue:(CGFloat)progressValue{
    if (self.circleShapeLayer) {
        self.circleShapeLayer.strokeEnd = progressValue;
        self.titleLabel.text = [NSString stringWithFormat:@"%.f%@", progressValue*100, @"%"];
        [self.titleLabel sizeToFit];
    }
}

@end
