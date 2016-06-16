//
//  YZTLuJinSuoInvestmentCell.h
//  CustomScrollViewCell
//
//  Created by Miaoz on 16/6/14.
//  Copyright © 2016年 Miaoz. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^LuJinSuoInvestmentCellSingleViewClickChangeBlock)(id model,id object);

@interface YZTLuJinSuoInvestmentCell : UITableViewCell
@property(nonatomic, copy)LuJinSuoInvestmentCellSingleViewClickChangeBlock singleViewClickChangeBlock;
@property(nonatomic,strong)NSArray *data;
@end
