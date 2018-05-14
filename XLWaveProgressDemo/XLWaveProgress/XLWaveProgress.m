//
//  XLWaveProgress.m
//  XLWaveProgressDemo
//
//  Created by Apple on 2016/11/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "XLWaveProgress.h"
#import "XLWave.h"

@interface XLWaveProgress () {
    XLWave *_wave;
    UILabel *_textLabel;
}

@end

@implementation XLWaveProgress

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self buildLayout];
    }
    return self;
}

- (void)buildLayout {
    
    _wave = [[XLWave alloc] initWithFrame:self.bounds];
    _wave.center = CGPointMake(self.bounds.size.width/2.0f, self.bounds.size.width/2.0f);
    [self addSubview:_wave];
    
    _textLabel = [[UILabel alloc] initWithFrame:self.bounds];
    _textLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_textLabel];
}

#pragma mark -
#pragma mark Setter

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    _wave.progress = progress;
    _textLabel.text = [NSString stringWithFormat:@"%.0f%%",progress*100];
}

- (void)setTextFont:(UIFont *)textFont {
    _textLabel.font = textFont;
}

- (void)setTextColor:(UIColor *)textColor {
    _textLabel.textColor = textColor;
}

- (void)setWaveBackgroundColor:(UIColor *)waveBackgroundColor {
    _wave.waveBackgroundColor = waveBackgroundColor;
}

- (void)setBackWaveColor:(UIColor *)backWaveColor {
    _wave.backWaveColor = backWaveColor;
}

- (void)setFrontWaveColor:(UIColor *)frontWaveColor {
    _wave.frontWaveColor = frontWaveColor;
}

#pragma mark -
#pragma mark 功能方法
- (void)start {
    [_wave start];
}

- (void)stop {
    [_wave stop];
}

- (void)dealloc {
    [_wave stop];
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}

@end
