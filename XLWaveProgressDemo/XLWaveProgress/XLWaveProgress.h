//
//  XLWaveProgress.h
//  XLWaveProgressDemo
//
//  Created by Apple on 2016/11/10.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XLWaveProgress : UIView
/**
 进度 0~1
 */
@property (nonatomic ,assign) CGFloat progress;
/**
 文字颜色
 */
@property (nonatomic ,strong) UIColor *textColor;
/**
 文字字体
 */
@property (nonatomic ,strong) UIFont *textFont;
/**
 显示在前面的波浪颜色
 */
@property (nonatomic ,strong) UIColor *frontWaveColor;
/**
 显示在后面的波浪颜色
 */
@property (nonatomic ,strong) UIColor *backWaveColor;
/**
 波浪背景色
 */
@property (nonatomic ,strong) UIColor *waveBackGroundColor;

/**
 开始
 */
- (void)start;
/**
 停止
 */
- (void)stop;

@end
