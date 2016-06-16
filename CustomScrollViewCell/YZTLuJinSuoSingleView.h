//
//  YZTLuJinSuoSingleView.h
//  CustomScrollViewCell
//
//  Created by Miaoz on 16/6/14.
//  Copyright © 2016年 Miaoz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^LuJinSuoSingleViewClickChangeBlock)(id model,id object);


@interface YZTLuJinSuoSingleView : UIView
@property(nonatomic, copy)LuJinSuoSingleViewClickChangeBlock singleViewClickChangeBlock;
@end
