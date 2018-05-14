//
//  ViewController.m
//  XLWaveProgressDemo
//
//  Created by Apple on 2016/11/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "XLWaveProgress.h"

@interface ViewController () {
    XLWaveProgress *_waveProgress;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //波浪的背景，可以不要
    UIView *waveContainer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    waveContainer.backgroundColor = [UIColor colorWithRed:190/255.0f green:232/255.0f blue:231/255.0f alpha:0.8];
    waveContainer.layer.cornerRadius = waveContainer.bounds.size.width/2.0f;
    waveContainer.layer.masksToBounds = true;
    waveContainer.center = self.view.center;
    [self.view addSubview:waveContainer];
    
    
    //初始化波浪，需要设置字体大小、字体颜色、波浪背景颜色、前层波浪颜色、后层博浪颜色
    _waveProgress = [[XLWaveProgress alloc] initWithFrame:CGRectMake(0, 0, 160, 160)];
    _waveProgress.center = CGPointMake(waveContainer.bounds.size.width/2.0f, waveContainer.bounds.size.height/2.0f);
    _waveProgress.progress = 0.0f;
    //波浪背景颜色，深绿色
    _waveProgress.waveBackgroundColor = [UIColor colorWithRed:96/255.0f green:159/255.0f blue:150/255.0f alpha:1];
    //前层波浪颜色
    _waveProgress.backWaveColor = [UIColor colorWithRed:136/255.0f green:199/255.0f blue:190/255.0f alpha:1];
    //后层波浪颜色
    _waveProgress.frontWaveColor = [UIColor colorWithRed:28/255.0 green:203/255.0 blue:174/255.0 alpha:1];
    //字体
    _waveProgress.textFont = [UIFont boldSystemFontOfSize:50];
    //文字颜色
    _waveProgress.textColor = [UIColor whiteColor];
    [waveContainer addSubview:_waveProgress];
    //开始波浪
    [_waveProgress start];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, CGRectGetMaxY(waveContainer.frame) + 50, self.view.bounds.size.width - 2*50, 30)];
    [slider addTarget:self action:@selector(sliderMethod:) forControlEvents:UIControlEventValueChanged];
    [slider setMaximumValue:1];
    [slider setMinimumValue:0];
    [slider setMinimumTrackTintColor:[UIColor colorWithRed:96/255.0f green:159/255.0f blue:150/255.0f alpha:1]];
    [self.view addSubview:slider];
}

- (void)sliderMethod:(UISlider*)slider {
    _waveProgress.progress = slider.value;
}


@end
