//
//  YGBookStoreController.m
//  YouguRead
//
//  Created by YG on 2017/9/21.
//  Copyright © 2017年 YG. All rights reserved.
//

#import "YGBookStoreController.h"

@interface YGBookStoreController ()

@end

@implementation YGBookStoreController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
