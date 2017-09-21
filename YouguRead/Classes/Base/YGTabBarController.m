//
//  YGTabBarController.m
//  YouguRead
//
//  Created by YG on 2017/9/21.
//  Copyright © 2017年 YG. All rights reserved.
//

#import "YGTabBarController.h"

NSString *const YGTabBarItemTitle = @"YGTabBarItemTitle";
NSString *const YGTabBarItemImage = @"YGTabBarItemImage";
NSString *const YGTabBarItemSelectedImage = @"YGTabBarItemSelectedImage";

@interface YGTabBarController ()

@end

@implementation YGTabBarController

@synthesize viewControllers = _viewControllers;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Private Methods
/**
 *  设置自定义 tabBar。
 */
- (void)setupTabBar {
    
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    
}

- (void)setViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers {
    // TODO 此段代码的意思？
    if (_viewControllers && _viewControllers.count) {
        for (UIViewController *viewController in _viewControllers) {
            [viewController willMoveToParentViewController:nil];
            [viewController.view removeFromSuperview];
            [viewController removeFromParentViewController];
        }
    }
    
    if (viewControllers && [viewControllers isKindOfClass:[NSArray class]]) {
        
        // TODO NSException的作用?
        if ((!_tabBarItemsAttributes) || (_tabBarItemsAttributes.count != viewControllers.count)) {
            [NSException raise:@"YGTabBarController" format:@"设置_tabBarItemsAttributes属性时，确保元素个数与控制器的个数相同，并在方法`-setViewControllers:`之前设置"];
        }
        // TODO copy的作用?  直接赋值的区别?
        _viewControllers = [viewControllers copy];
        
        NSUInteger index = 0;
        for (UIViewController *vc in _viewControllers) {
            
            NSDictionary *dict = _tabBarItemsAttributes[index];
            NSString *title = dict[YGTabBarItemTitle];
            NSString *normalImageName = dict[YGTabBarItemImage];
            NSString *selectedImageName = dict[YGTabBarItemSelectedImage];
            
            [self addOneChildViewController:vc WithTitle:title normalImageName:normalImageName selectedImageName:selectedImageName];
            
            index ++;
        }
    }
    
    
}

/**
 *  添加一个子控制器
 *
 *  @param viewController    控制器
 *  @param title             标题
 *  @param normalImageName   图片
 *  @param selectedImageName 选中图片
 */
- (void)addOneChildViewController:(UIViewController *)viewController
                        WithTitle:(NSString *)title
                  normalImageName:(NSString *)normalImageName
                selectedImageName:(NSString *)selectedImageName {
    
    viewController.tabBarItem.title = title;
    if (normalImageName) {
        UIImage *normalImage = [UIImage imageNamed:normalImageName];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.image = normalImage;
    }
    if (selectedImageName) {
        UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.selectedImage = selectedImage;
    }
    
    // TODO 调整位置？
    if (self.shouldCustomizeImageInsets) {
        viewController.tabBarItem.imageInsets = self.imageInsets;
    }
    if (self.shouldCustomizeTitlePositionAdjustment) {
        viewController.tabBarItem.titlePositionAdjustment = self.titlePositionAdjustment;
    }
    [self addChildViewController:viewController];
}

- (BOOL)shouldCustomizeImageInsets {
    BOOL shouldCustomizeImageInsets = self.imageInsets.top != 0.f || self.imageInsets.left != 0.f || self.imageInsets.bottom != 0.f || self.imageInsets.right != 0.f;
    return shouldCustomizeImageInsets;
}

- (BOOL)shouldCustomizeTitlePositionAdjustment {
    BOOL shouldCustomizeTitlePositionAdjustment = self.titlePositionAdjustment.horizontal != 0.f || self.titlePositionAdjustment.vertical != 0.f;
    return shouldCustomizeTitlePositionAdjustment;
}

#pragma mark -
#pragma mark - public Methods

- (instancetype)initWithViewControllers:(NSArray<UIViewController *> *)viewControllers tabBarItemsAttributes:(NSArray<NSDictionary *> *)tabBarItemsAttributes {
    if (self = [super init]) {
        _tabBarItemsAttributes = tabBarItemsAttributes;
        self.viewControllers = viewControllers;
    }
    return self;
}

+ (instancetype)tabBarControllerWithViewControllers:(NSArray<UIViewController *> *)viewControllers tabBarItemsAttributes:(NSArray<NSDictionary *> *)tabBarItemsAttributes {
    YGTabBarController *tabBarController = [[YGTabBarController alloc] initWithViewControllers:viewControllers tabBarItemsAttributes:tabBarItemsAttributes];
    
    return tabBarController;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
