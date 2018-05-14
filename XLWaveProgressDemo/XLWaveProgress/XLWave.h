//
//  XLWave.h
//  XLWaveProgressDemo
//
//  Created by Apple on 2016/11/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XLWave : UIView

/**
 设置进度 0~1
 */
@property (assign,nonatomic) CGFloat progress;
/**
 前层波浪颜色
 */
@property (nonatomic ,strong) UIColor *frontWaveColor;
/**
 后层波浪颜色
 */
@property (nonatomic ,strong) UIColor *backWaveColor;
/**
 波浪背景色
 */
@property (nonatomic ,strong) UIColor *waveBackgroundColor;

/**
 开始
 */
- (void)start;

/**
 停止
 */
-(void)stop;

@end
