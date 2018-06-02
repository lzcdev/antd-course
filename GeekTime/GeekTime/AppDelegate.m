//
//  AppDelegate.m
//  GeekTime
//
//  Created by LuzhiChao on 2018/6/1.
//  Copyright © 2018年 LuzhiChao. All rights reserved.
//

#import "AppDelegate.h"
#import <CYLTabBarController.h>
#import "FindViewController.h"
#import "ColumeViewController.h"
#import "MineViewController.h"
#import "BaseNavigationViewController.h"
#import "UINavigationConfig.h"

@interface AppDelegate ()
@property (nonatomic, strong) CYLTabBarController *tabBarController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.backgroundColor = [UIColor whiteColor];
    [self setupViewControllers];
    [self.window setRootViewController:_tabBarController];
    [UINavigationConfig shared].sx_defaultFixSpace = 0;//设置左上角返回按钮距左边距离
    
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)setupViewControllers {
    FindViewController *findViewController = [[FindViewController alloc] init];
    BaseNavigationViewController *findNavigationController = [[BaseNavigationViewController alloc]
                                                   initWithRootViewController:findViewController];
    
    ColumeViewController *columnViewController = [[ColumeViewController alloc] init];
    BaseNavigationViewController *columnNavigationController = [[BaseNavigationViewController alloc]
                                                    initWithRootViewController:columnViewController];
    
    MineViewController *mineViewController = [[MineViewController alloc] init];
    BaseNavigationViewController *mineNavigationController = [[BaseNavigationViewController alloc]
                                                    initWithRootViewController:mineViewController];
    
    
    
    _tabBarController = [[CYLTabBarController alloc] init];
    [self customizeTabBarForController:_tabBarController];
    [self customizeTabBarAppearance:_tabBarController];
    
    [_tabBarController setViewControllers:@[
                                           findNavigationController,
                                           columnNavigationController,
                                           mineNavigationController,
                                           ]];
    
    
}

- (void)customizeTabBarForController:(CYLTabBarController *)tabBarController {
    
    NSDictionary *dict1 = @{
                            CYLTabBarItemTitle : @"发现",
                            CYLTabBarItemImage : @"find_normal",
                            CYLTabBarItemSelectedImage : @"find_highlight",
                            };
    NSDictionary *dict2 = @{
                            CYLTabBarItemTitle : @"专栏",
                            CYLTabBarItemImage : @"column_normal",
                            CYLTabBarItemSelectedImage : @"column_highlight",
                            };
    
    NSDictionary *dict3 = @{
                            CYLTabBarItemTitle : @"我的",
                            CYLTabBarItemImage : @"mine_normal",
                            CYLTabBarItemSelectedImage : @"mine_highlight",
                            };
    
    NSArray *tabBarItemsAttributes = @[ dict1, dict2, dict3 ];
    tabBarController.tabBarItemsAttributes = tabBarItemsAttributes;
}


- (void)customizeTabBarAppearance:(CYLTabBarController *)tabBarController {
    // Customize UITabBar height
    // 自定义 TabBar 高度
    tabBarController.tabBarHeight = CYL_IS_IPHONE_X ? 65 : 40;
    
    // set the text color for unselected state
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    // set the text color for selected state
    // 选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor colorFromHexCode:@"#EF8E3D"];
    
    // set the text Attributes
    // 设置文字属性
    UITabBarItem *tabBar = [UITabBarItem appearance];
    [tabBar setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [tabBar setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];

}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
