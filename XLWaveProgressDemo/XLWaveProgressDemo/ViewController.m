//
//  ViewController.m
//  XLWaveProgressDemo
//
//  Created by Apple on 2016/11/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "XLWaveProgress.h"

@interface ViewController ()
{
    XLWaveProgress *_waveProgress;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _waveProgress = [[XLWaveProgress alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    _waveProgress.center = self.view.center;
    [self.view addSubview:_waveProgress];
    _waveProgress.progress = 0.0f;
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, CGRectGetMaxY(_waveProgress.frame) + 50, self.view.bounds.size.width - 2*50, 30)];
    [slider addTarget:self action:@selector(sliderMethod:) forControlEvents:UIControlEventValueChanged];
    [slider setMaximumValue:1];
    [slider setMinimumValue:0];
    [slider setMinimumTrackTintColor:[UIColor colorWithRed:96/255.0f green:159/255.0f blue:150/255.0f alpha:1]];
    [self.view addSubview:slider];
}

-(void)sliderMethod:(UISlider*)slider
{
    _waveProgress.progress = slider.value;
}


@end
