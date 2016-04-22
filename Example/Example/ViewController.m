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
@property (weak, nonatomic) IBOutlet HCWCircleProgressView *sbCircleProgressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // code
    HCWCircleProgressView *circleProgressView = [[HCWCircleProgressView alloc] initWithFrame:(CGRect){60, 100, 100,100}];
    [self.view addSubview:circleProgressView];
    self.circleProgressView = circleProgressView;
    
    // storeboard
    self.sbCircleProgressView.isCircle = YES;
    self.sbCircleProgressView.progressCorlor = [UIColor greenColor];
    
    // slider
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, 350, 150, 100)];
    slider.minimumValue = 0.0;
    slider.maximumValue = 1.0;
    slider.value = 0.2;
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}

-(void)changeValue:(UISlider *)slider{
    self.circleProgressView.progressValue = slider.value;
    self.sbCircleProgressView.progressValue = slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
