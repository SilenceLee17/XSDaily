//
//  XSLinkPresenter.m
//  Daily
//
//  Created by 李兴东 on 2018/12/22.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSLinkPresenter.h"
#import <UIKit/UIKit.h>

@implementation XSLinkObject
@end

@interface XSLinkPresenter()

@property (nonatomic, strong) NSMutableArray <XSLinkObject *>*dataArray;

@end

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

- (NSInteger)numberOfItemsInSection{
    return _dataArray.count;
}

- (XSLinkObject *)linkObjectAtIndex:(NSInteger)index
{
    if (![self checkDataIndex:index]) {
        return nil;
    }
    return _dataArray[index];
}

- (void)didSelectItemAtIndex:(NSInteger)index
{
    if (![self checkDataIndex:index]) {
        return;
    }
    NSURL *openURL = [NSURL URLWithString:_dataArray[index].url];
    if ([[UIApplication sharedApplication] canOpenURL:openURL]) {
        [[UIApplication sharedApplication] openURL:openURL options:@{} completionHandler:^(BOOL success) {
        }];
    }else{
        NSLog(@"未安装该应用");
    }
}

- (void)moveItemAtIndex:(NSInteger)sourceIndex toIndex:(NSInteger)destinationIndex
{
    if (!([self checkDataIndex:sourceIndex] && [self checkDataIndex:destinationIndex])) {
        return;
    }
    XSLinkObject *object = _dataArray[sourceIndex];
    [_dataArray removeObject:object];
    [_dataArray insertObject:object atIndex:destinationIndex];
}

- (BOOL)checkDataIndex:(NSInteger)index
{
    return index >=0 && index < _dataArray.count;
}

//MARK: test
- (void)test
{
    XSLinkObject *object2 = [XSLinkObject new];
    object2.name = @"不思议迷宫2";
    object2.imageName = @"gumballs";
    object2.url = @"wx4a818af3b7a8d738://";
    XSLinkObject *object3 = [XSLinkObject new];
    object3.name = @"不思议迷宫3";
    object3.imageName = @"gumballs";
    object3.url = @"wx4a818af3b7a8d738://";
    XSLinkObject *object4 = [XSLinkObject new];
    object4.name = @"不思议迷宫4";
    object4.imageName = @"gumballs";
    object4.url = @"wx4a818af3b7a8d738://";
    XSLinkObject *object5 = [XSLinkObject new];
    object5.name = @"不思议迷宫5";
    object5.imageName = @"gumballs";
    object5.url = @"wx4a818af3b7a8d738://";
    XSLinkObject *object6 = [XSLinkObject new];
    object6.name = @"不思议迷宫6";
    object6.imageName = @"gumballs";
    object6.url = @"wx4a818af3b7a8d738://";
    XSLinkObject *object7 = [XSLinkObject new];
    object7.name = @"不思议迷宫7";
    object7.imageName = @"gumballs";
    object7.url = @"wx4a818af3b7a8d738://";
    XSLinkObject *object1 = [XSLinkObject new];
    object1.name = @"不思议迷宫";
    object1.imageName = @"gumballs";
    object1.url = @"wx4a818af3b7a8d738://";
    
    _dataArray = @[object1,object2,object3,object4,object5,object6,object7].mutableCopy;
}

@end
