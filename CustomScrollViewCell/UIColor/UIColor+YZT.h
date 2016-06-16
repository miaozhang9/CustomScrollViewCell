//
//  UIColor+YZT.h
//  JJObjCTool
//
//  Created by hamilyjing on 5/11/15.
//  Copyright (c) 2015 gongjian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (YZT)

+ (UIColor *)yzt_colorWithHex:(NSInteger)hex;

+ (UIColor *)yzt_colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha;

+ (UIColor *)yzt_colorWithHexString:(NSString *)color;

+ (UIColor *)yzt_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

+ (UIColor *)yzt_colorWithRGBA:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

+ (UIColor *)yzt_colorWithRGBA:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(NSInteger)alpha;

+ (UIColor *)yzt_colorWithHexIncludeAlpha:(NSInteger)hex; // AARRGGBB

+ (UIColor *)yzt_arc4randomColor;

#pragma mark - Compare

- (BOOL)yzt_isEqualToColor:(UIColor *)anotherColor;

#pragma mark - Image

- (UIImage *)yzt_image;

#pragma mark - HEX to color

- (NSString *)yzt_hexString; // #RRGGBB

@end




