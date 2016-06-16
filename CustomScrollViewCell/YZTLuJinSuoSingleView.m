//
//  YZTLuJinSuoSingleView.m
//  CustomScrollViewCell
//
//  Created by Miaoz on 16/6/14.
//  Copybottom © 2016年 Miaoz. All bottoms reserved.
//

#import "YZTLuJinSuoSingleView.h"
#import "Masonry.h"
#import "UIColor/UIColor+YZT.h"
#import "UIColor/UIColor+YZT.m"
#define YZTFont(n)        [UIFont systemFontOfSize:n]
@interface YZTLuJinSuoSingleView ()
@property (nonatomic, strong) UILabel *titleLab;
@property (nonatomic, strong) UILabel *descLab;
@property (nonatomic, strong) UILabel *topContentLab;
@property (nonatomic, strong) UILabel *middleContentLab;
@property (nonatomic, strong) UILabel *bottomContentLab;
@property (nonatomic, strong) UILabel *topLab;
@property (nonatomic, strong) UILabel *middleLab;
@property (nonatomic, strong) UILabel *bottomLab;
@property (nonatomic, strong) UIView *line1View;
@end

@implementation YZTLuJinSuoSingleView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    {
        self.layer.borderWidth = 1.0f;
        self.layer.borderColor = [UIColor lightGrayColor].CGColor;
        [self addSubViews];
        [self defineLayout];
        [self addTapGesture];
       
    }
    
    return self;
}

- (void)addSubViews {
    UILabel *titleLab = [UILabel new];
    titleLab.text = @"零活宝-14日聚财";
    titleLab.font = YZTFont(15);
    titleLab.numberOfLines = 2;
    titleLab.textAlignment = NSTextAlignmentCenter;
    titleLab.textColor = [UIColor yzt_colorWithHexString:@"#4a4a4a"];
    _titleLab = titleLab;
//        titleLab.backgroundColor = [UIColor redColor];
    [self addSubview:titleLab];
    
    UILabel *descLab = [UILabel new];
    descLab.text = @"陆金所新客专享";
    descLab.font = YZTFont(15);
    descLab.textAlignment = NSTextAlignmentCenter;
    descLab.textColor = [UIColor yzt_colorWithHexString:@"#4a4a4a"];
    _descLab = descLab;
//        descLab.backgroundColor = [UIColor yellowColor];
    [self addSubview:descLab];
    
    
    UILabel *topContentLab = [UILabel new];
    topContentLab.text = @"10.00%";
    topContentLab.font = YZTFont(20);
    topContentLab.textAlignment = NSTextAlignmentCenter;
    topContentLab.textColor = [UIColor yzt_colorWithHexString:@"#ff4141"];
    _topContentLab = topContentLab;
//        topContentLab.backgroundColor = [UIColor blackColor];
    [self addSubview:topContentLab];
    
    UIView *line1View = [UIView new];
    line1View.backgroundColor = [UIColor yzt_colorWithHexString:@"#cccccc"];
    _line1View = line1View;
    [self addSubview:line1View];
    
    UILabel *middleContentLab = [UILabel new];
    middleContentLab.text = @"12个月";
    middleContentLab.font = YZTFont(14);
    middleContentLab.textColor = [UIColor yzt_colorWithHexString:@"#ff4141"];
    middleContentLab.textAlignment = NSTextAlignmentCenter;
    _middleContentLab = middleContentLab;
//        middleContentLab.backgroundColor = [UIColor grayColor];
    [self addSubview:middleContentLab];
    
    UIView *line2View = [UIView new];
    line2View.backgroundColor = [UIColor yzt_colorWithHexString:@"#cccccc"];
    [self addSubview:line2View];
    
    UILabel *bottomContentLab = [UILabel new];
    bottomContentLab.text = @"10000元";
    bottomContentLab.font = YZTFont(14);
    bottomContentLab.textColor = [UIColor yzt_colorWithHexString:@"#ff4141"];
//        bottomContentLab.backgroundColor = [UIColor greenColor];
    bottomContentLab.textAlignment = NSTextAlignmentRight;
    _bottomContentLab = bottomContentLab;
    [self addSubview:bottomContentLab];
    
    UILabel *topLab = [UILabel new];
    topLab.text = @"年化收益率";
    topLab.font = YZTFont(14);
    topLab.textColor = [UIColor yzt_colorWithHexString:@"#9b9b9b"];
    topLab.textAlignment = NSTextAlignmentCenter;
    _topLab = topLab;
//        topLab.backgroundColor = [UIColor purpleColor];
    [self addSubview:topLab];
    
    UILabel *middleLab = [UILabel new];
    middleLab.text = @"理财期限";
    middleLab.font = YZTFont(14);
    middleLab.textColor = [UIColor yzt_colorWithHexString:@"#9b9b9b"];
    middleLab.textAlignment = NSTextAlignmentLeft;
    _middleLab = middleLab;
//        middleLab.backgroundColor = [UIColor orangeColor];
    [self addSubview:middleLab];
    
    
    UILabel *bottomLab = [UILabel new];
    bottomLab.text = @"投资起点";
    bottomLab.font = YZTFont(14);
    bottomLab.textColor = [UIColor yzt_colorWithHexString:@"#9b9b9b"];
    bottomLab.textAlignment = NSTextAlignmentLeft;
    _bottomLab = bottomLab;
//        bottomLab.backgroundColor = [UIColor brownColor];
    [self addSubview:bottomLab];
    
    
    
}

- (void)defineLayout {
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(10.f);
        make.leading.equalTo(self.mas_leading).offset(5.f);
        make.trailing.equalTo(self.mas_trailing).offset(-5.f);
    }];
    
    [self.topContentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLab.mas_bottom).offset(5.f);
        make.leading.and.trailing.equalTo(self.titleLab);
        
    }];
    [self.topLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.topContentLab.mas_bottom).offset(5.f);
        make.leading.and.trailing.equalTo(self.titleLab);
    }];
    
    [self.line1View mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.topLab.mas_bottom).offset(10.f);
        make.leading.equalTo(self.mas_leading).offset(5.f);
        make.trailing.equalTo(self.mas_trailing).offset(-5.f);
        make.height.equalTo(@0.5f);
    }];
    
    [self.middleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.line1View.mas_bottom).offset(10.f);
        make.leading.equalTo(self.mas_leading).offset(5.f);
    }];
    
    [self.middleContentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.line1View.mas_bottom).offset(10.f);
        make.trailing.equalTo(self.mas_trailing).offset(-5.f);
    }];
    
    [self.bottomLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleLab.mas_bottom).offset(5.f);
        make.leading.equalTo(self.middleLab.mas_leading);
    }];
 
    [self.bottomContentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleContentLab.mas_bottom).offset(5.f);
        make.trailing.equalTo(self.middleContentLab.mas_trailing);
    }];
    
}

- (void)addTapGesture{

    UITapGestureRecognizer* singleRecognizer;
    singleRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap)];
    singleRecognizer.numberOfTapsRequired = 1; // 单击
    [self addGestureRecognizer:singleRecognizer];
}

- (void)handleSingleTap{
    if (_singleViewClickChangeBlock) {
        _singleViewClickChangeBlock(nil,nil);
    }
}
@end
