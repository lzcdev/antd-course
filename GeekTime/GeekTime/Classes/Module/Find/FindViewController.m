//
//  FindViewController.m
//  GeekTime
//
//  Created by LuzhiChao on 2018/6/2.
//  Copyright © 2018年 LuzhiChao. All rights reserved.
//

#import "FindViewController.h"
#import "GeekNewsViewController.h"

@interface FindViewController ()

@end

@implementation FindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"发现";
                                 
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[GeekNewsViewController new] animated:YES];

}

@end
