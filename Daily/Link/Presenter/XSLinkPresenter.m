//
//  XSLinkPresenter.m
//  Daily
//
//  Created by 李兴东 on 2018/12/22.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSLinkPresenter.h"

@implementation XSLinkPresenter

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dataArray = [NSMutableArray array];
        [self test];
    }
    return self;
}

- (void)test
{
    _dataArray = @[@"不思议迷宫",@"崩坏3rd"].mutableCopy;
}

@end
