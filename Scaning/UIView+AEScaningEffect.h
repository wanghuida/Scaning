//
//  UIView+AEScaningEffect.h
//  Scaning
//
//  Created by william on 13-11-14.
//  Copyright (c) 2013年 iphone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AEScaningEffect)


- (void) startScaningRepeatCount:(int)count;
- (void) startScaningRepeatCount:(int)count Duration:(int)duration;
- (void) startScaningRepeatCount:(int)count Duration:(int)duration HeightFactor:(float) factor;

- (void) stopScaning;

@end
