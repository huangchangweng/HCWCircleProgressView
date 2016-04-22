# HCWCircleProgressView
简便美观的进度指示器

![](https://github.com/huangchangweng/HCWCircleProgressView/blob/master/HCWCircleProgressView.gif)

    // code
    HCWCircleProgressView *circleProgressView = [[HCWCircleProgressView alloc] initWithFrame:(CGRect){60, 100, 100,100}];
    [self.view addSubview:circleProgressView];
    self.circleProgressView = circleProgressView;
    
    // storeboard
    self.sbCircleProgressView.isCircle = YES;
    self.sbCircleProgressView.progressCorlor = [UIColor greenColor];

