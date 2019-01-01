//
//  XSLinkPresenter.h
//  Daily
//
//  Created by 李兴东 on 2018/12/22.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSLinkObject : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *imageName;

@end

@interface XSLinkPresenter : NSObject

- (NSInteger)numberOfItemsInSection;
- (XSLinkObject *)linkObjectAtIndex:(NSInteger)index;
- (void)didSelectItemAtIndex:(NSInteger)index;

- (void)moveItemAtIndex:(NSInteger)sourceIndex toIndex:(NSInteger)destinationIndex;

@end
