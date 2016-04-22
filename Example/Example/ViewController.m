//
//  ViewController.m
//  Example
//
//  Created by HCW on 16/4/22.
//  Copyright © 2016年 HCW. All rights reserved.
//

#import "ViewController.h"
#import "HCWCircleProgressView.h"

@interface ViewController ()
@property (nonatomic, strong) HCWCircleProgressView *circleProgressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HCWCircleProgressView *circleProgressView = [[HCWCircleProgressView alloc] initWithFrame:(CGRect){100, 100, 50,50}];
    circleProgressView.layer.masksToBounds = YES;
    circleProgressView.layer.cornerRadius = circleProgressView.frame.size.width/2.0;
    [self.view addSubview:circleProgressView];
    self.circleProgressView = circleProgressView;
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, 350, 150, 100)];
    slider.minimumValue = 0.0;
    slider.maximumValue = 1.0;
    slider.value = 0.2;
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}

-(void)changeValue:(UISlider *)slider{
    self.circleProgressView.progressValue = slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
