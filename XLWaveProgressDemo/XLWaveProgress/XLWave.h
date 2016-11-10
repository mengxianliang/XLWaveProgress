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

-(void)stop;

@end
