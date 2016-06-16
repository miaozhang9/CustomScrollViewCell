//
//  YZTLuJinSuoInvestmentCell.m
//  CustomScrollViewCell
//
//  Created by Miaoz on 16/6/14.
//  Copyright © 2016年 Miaoz. All rights reserved.
//

#import "YZTLuJinSuoInvestmentCell.h"
#import "Masonry.h"
#import "YZTLuJinSuoSingleView.h"
@interface YZTLuJinSuoInvestmentCell ()<UIScrollViewDelegate>
@property (nonatomic,retain) UIScrollView *scrollView;
@end

@implementation YZTLuJinSuoInvestmentCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.accessoryType = UITableViewCellAccessoryNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initSubViews];
        [self defineLayout];
        self.data = @[@"",@"",@"",@"",@"",@"",@"",@"",];
    }
    return self;
}

- (void)initSubViews {
    
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectZero];
//        _scrollView.backgroundColor = [UIColor redColor];
        _scrollView.directionalLockEnabled = YES; //只能一个方向滑动
        _scrollView.pagingEnabled = NO; //是否翻页
        _scrollView.showsVerticalScrollIndicator = NO; //垂直方向的滚动指示
        _scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;//滚动指示的风格
        _scrollView.showsHorizontalScrollIndicator = YES;//水平方向的滚动指示
        _scrollView.delegate = self;
//        CGSize newSize = CGSizeMake(1000, self.contentView.frame.size.height);
//        [_scrollView setContentSize:newSize];
        [self.contentView addSubview:_scrollView];
    }
    
    
}

-(void)defineLayout {
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).insets(UIEdgeInsetsMake(0.f, 0.f, 0.f, 0.f));
    }];
}

- (void)setData:(NSArray *)data{
    _data = data;
    for (NSInteger i = 0; i < 7; i ++) {
        YZTLuJinSuoSingleView *singleView = [YZTLuJinSuoSingleView new];
        [singleView setSingleViewClickChangeBlock:^(id model ,id object){
            if (_singleViewClickChangeBlock) {
                _singleViewClickChangeBlock(nil ,nil);
            }
            
        }];
        //        singleView.backgroundColor = [UIColor redColor];
        [self.scrollView addSubview:singleView];
        
        [singleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView.mas_top).offset(5.f);
            if (i == 0) {
                make.leading.equalTo(@5.f);
            }else {
                
                make.leading.equalTo(@(130*i+ (i+1)*5));
            }
            
            make.width.equalTo(@130.f);
            make.height.equalTo(@(160.f));
            
        }];
        
    }

    CGSize newSize = CGSizeMake(130*(_data.count-1)+ _data.count*5, self.contentView.frame.size.height);
    [self.scrollView setContentSize:newSize];

}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
