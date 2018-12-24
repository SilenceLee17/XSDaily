//
//  XSLinkViewController.m
//  Daily
//
//  Created by 李兴东 on 2018/12/22.
//  Copyright © 2018年 xingshao. All rights reserved.
//

#import "XSLinkViewController.h"
#import "XSLinkPresenter.h"
#import "Masonry.h"

static NSString *const kReuseIdentifier = @"XSLinkCollectionViewCell";

@interface XSLinkViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) XSLinkPresenter *presenter;

@end

@implementation XSLinkViewController

//MARK: LifeCycle
- (instancetype)init
{
    self = [super init];
    if (self) {
        _presenter = [[XSLinkPresenter alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILongPressGestureRecognizer *longPressGestureRecognizer = [[UILongPressGestureRecognizer alloc] init];
    [longPressGestureRecognizer addTarget:self action:@selector(handleLongPressRecognizer:)];
    [self.collectionView addGestureRecognizer:longPressGestureRecognizer];
    [self.view addSubview:self.collectionView];
}

//MARK: Protocol - UICollectionViewDelegate

//MARK: Protocol - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _presenter.dataArray.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

//MARK: Events
- (void)handleLongPressRecognizer:(UILongPressGestureRecognizer *)gesture
{
    
}

//MARK: Properties
- (UICollectionView *)collectionView
{
    if (!_collectionView) {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kReuseIdentifier];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    return _collectionView;
}
@end
