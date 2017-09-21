//
//  YGTabBarController.h
//  YouguRead
//
//  Created by YG on 2017/9/21.
//  Copyright © 2017年 YG. All rights reserved.
//

#import <UIKit/UIKit.h>

FOUNDATION_EXTERN NSString *const YGTabBarItemTitle;
FOUNDATION_EXTERN NSString *const YGTabBarItemImage;
FOUNDATION_EXTERN NSString *const YGTabBarItemSelectedImage;



@interface YGTabBarController : UITabBarController

/*!
 *  显示在tabBarController上面的子控制器数组
 */
@property (nonatomic, readwrite, strong) NSArray<UIViewController *> *tarBarViewControllers;

/*!
 *  tabBarItem的属性数组
 */
@property (nonatomic, readwrite, strong) NSArray<NSDictionary *> *tabBarItemsAttributes;

/*!
 *  设置tabbar中图片的位置. 默认是UIEdgeInsetsZero.
 */
@property (nonatomic, readwrite, assign) UIEdgeInsets imageInsets;

/*!
 *  设置tabbar中文字的位置
 */
@property (nonatomic, readwrite, assign) UIOffset titlePositionAdjustment;

/**
 *  初始化方法
 */
- (instancetype)initWithViewControllers:(NSArray<UIViewController *> *)viewControllers tabBarItemsAttributes:(NSArray<NSDictionary *> *)tabBarItemsAttributes;

/**
 *  类方法 初始化
 */
+ (instancetype)tabBarControllerWithViewControllers:(NSArray<UIViewController *> *)viewControllers tabBarItemsAttributes:(NSArray<NSDictionary *> *)tabBarItemsAttributes;

@end
