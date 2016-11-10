//
//  XLWaveProgress.m
//  XLWaveProgressDemo
//
//  Created by Apple on 2016/11/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "XLWaveProgress.h"
#import "XLWave.h"

@interface XLWaveProgress ()
{
    XLWave *_wave;
    UILabel *_textLabel;
}

@end

@implementation XLWaveProgress

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self buildLayout];
    }
    return self;
}

-(void)buildLayout
{
    self.backgroundColor = [UIColor colorWithRed:190/255.0f green:232/255.0f blue:231/255.0f alpha:0.8];
    self.layer.cornerRadius = self.bounds.size.width/2.0f;
    self.layer.masksToBounds = true;
    
    CGFloat waveWidth = self.bounds.size.width * 0.8f;
    _wave = [[XLWave alloc] initWithFrame:CGRectMake(0, 0, waveWidth, waveWidth)];
    _wave.center = CGPointMake(self.bounds.size.width/2.0f, self.bounds.size.width/2.0f);
    [self addSubview:_wave];
    
    _textLabel = [[UILabel alloc] initWithFrame:self.bounds];
    _textLabel.textAlignment = NSTextAlignmentCenter;
    _textLabel.textColor = [UIColor whiteColor];
    _textLabel.font = [UIFont boldSystemFontOfSize:50];
    [self addSubview:_textLabel];
}

-(void)setProgress:(CGFloat)progress
{
    _progress = progress;
    _wave.progress = progress;
    _textLabel.text = [NSString stringWithFormat:@"%.0f%%",progress*100];
}

-(void)dealloc
{
    [_wave stop];
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}

@end
