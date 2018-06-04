//
//  FindViewController.m
//  GeekTime
//
//  Created by LuzhiChao on 2018/6/2.
//  Copyright © 2018年 LuzhiChao. All rights reserved.
//

#import "FindViewController.h"
#import "GeekNewsViewController.h"
#import <SDAutoLayout.h>
#import <SDCycleScrollView.h>

@interface FindViewController ()<UITableViewDelegate, UITableViewDataSource, SDCycleScrollViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) SDCycleScrollView *cycleScrollView;

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"发现";
                                 
    
    [self setupBanner];
}


/**
 首页轮播
 */
- (void)setupBanner {
    
    NSArray *titleArray = @[@"标题1", @"标题2", @"标题3"];
    NSArray *imagesURLStrings = @[
                                  @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
                                  @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
                                  @"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"
                                  ];
    _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 300) delegate:self placeholderImage:[UIImage imageNamed:@"img_loading_top"]];
    _cycleScrollView.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    _cycleScrollView.autoScrollTimeInterval = 3;
    _cycleScrollView.titlesGroup = titleArray;
    _cycleScrollView.titleLabelBackgroundColor = [UIColor colorWithWhite:0 alpha:0.6];
    _cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    _cycleScrollView.imageURLStringsGroup = imagesURLStrings;
    [self.view addSubview:_cycleScrollView];
}

@end
