//
//  YGTabBarControllerConfig.m
//  YouguRead
//
//  Created by YG on 2017/9/21.
//  Copyright © 2017年 YG. All rights reserved.
//

#import "YGTabBarControllerConfig.h"
#import "YGBookStoreController.h"
#import "YGBookShelfController.h"
#import "YGMineController.h"
#import "YGBaseNavigationController.h"

@interface YGTabBarControllerConfig ()

//属性声明


@end

@implementation YGTabBarControllerConfig
{
    //成员变量声明
    
}

/**
 *  懒加载 YGTabBarController
 */
- (YGTabBarController *)tabBarController {
    
    if (!_tabBarController) {
       
        _tabBarController = [YGTabBarController tabBarControllerWithViewControllers:[self childViewControllers] tabBarItemsAttributes:[self tabBarItemsAttributes]];
        
        [self customizeTabBarAppearance:_tabBarController];
    }
    
    return _tabBarController;
}

/**
 *  初始化 TabBarController 子控制器
 */
- (NSArray *)childViewControllers {
    //书城
    YGBookStoreController *bookStore = [YGBookStoreController new];
    bookStore.title = @"书城";
    YGBaseNavigationController *nav1 = [[YGBaseNavigationController alloc] initWithRootViewController:bookStore];
    //书架
    YGBookShelfController *bookShelf = [YGBookShelfController new];
    bookShelf.title = @"书架";
    YGBaseNavigationController *nav2 = [[YGBaseNavigationController alloc] initWithRootViewController:bookShelf];
    //我的
    YGMineController *mine = [YGMineController new];
    mine.title = @"我的";
    YGBaseNavigationController *nav3 = [[YGBaseNavigationController alloc] initWithRootViewController:mine];
    
    NSArray *controllers = @[nav1, nav2, nav3];
    
    return controllers;
}

/**
 *  设置TabBarItem的属性，包括 title、Image、selectedImage。
 */
- (NSArray *)tabBarItemsAttributes {
    
    //书城
    NSDictionary *dict1 = @{
                            YGTabBarItemTitle: @"书城",
                            YGTabBarItemImage: @"tab_bookStore",
                            YGTabBarItemSelectedImage: @"tab_bookStore_selected"
                            };
    //书架
    NSDictionary *dict2 = @{
                            YGTabBarItemTitle: @"书架",
                            YGTabBarItemImage: @"tab_bookShelf",
                            YGTabBarItemSelectedImage: @"tab_bookShelf_selected"
                            };
    //我的
    NSDictionary *dict3 = @{
                            YGTabBarItemTitle: @"我的",
                            YGTabBarItemImage: @"tab_mine",
                            YGTabBarItemSelectedImage: @"tab_mine_selected"
                            };
    
    
    NSArray *array = @[dict1, dict2, dict3];
    
    return array;
}

/**
 *  tabBarItem 的选中和不选中文字和背景图片属性、tabbar 背景图片属性的设置
 */
- (void)customizeTabBarAppearance:(YGTabBarController *)tabBarController {
    
    // 普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    // 选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    // 设置文字属性
    UITabBarItem *tabBar = [UITabBarItem appearance];
    [tabBar setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [tabBar setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    //去除 TabBar 自带的顶部阴影
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    
}

@end
