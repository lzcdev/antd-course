//
//  FindViewController.m
//  GeekTime
//
//  Created by LuzhiChao on 2018/6/2.
//  Copyright © 2018年 LuzhiChao. All rights reserved.
//

#import "FindViewController.h"
#import "GeekNewsViewController.h"

@interface FindViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"发现";
                                 
    
}


@end
