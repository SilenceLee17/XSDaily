//
//  XSLinkCollectionViewCell.m
//  Daily
//
//  Created by 李兴东 on 2018/12/30.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSLinkCollectionViewCell.h"
#import "Masonry.h"

@interface XSLinkCollectionViewCell ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *nameLabel;

@end

@implementation XSLinkCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void) setupViews
{
    UIImageView *imageView = [[UIImageView alloc] init];
    [self.contentView addSubview:imageView];
    _imageView = imageView;
    
    UILabel *nameLabel = [[UILabel alloc] init];
    nameLabel.adjustsFontSizeToFitWidth = YES;
    [self.contentView addSubview:nameLabel];
    _nameLabel = nameLabel;
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(64);
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.contentView);
    }];
    
    [nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(imageView.mas_bottom).mas_offset(5);
        make.centerX.equalTo(self.contentView);
    }];
}

- (void)fillData:(XSLinkObject *)object
{
    _imageView.image = [UIImage imageNamed:object.imageName];
    _nameLabel.text = object.name;
}

@end
