//
//  YGInterfacedConst.h
//  仿搜狗阅读
//
//  Created by YG on 2017/9/5.
//  Copyright © 2017年 YinTokey. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 
 将项目中所有的接口写在这里,方便统一管理,降低耦合
 
 这里通过宏定义来切换你当前的服务器类型,
 将你要切换的服务器类型宏后面置为真(即>0即可),其余为假(置为0)
 如下:现在的状态为测试服务器
 这样做切换方便,不用来回每个网络请求修改请求域名,降低出错事件
 */

#define DevelopSever 0
#define TestSever    0
#define ProductSever 1

/** 接口前缀-开发服务器*/
UIKIT_EXTERN NSString *const kApiPrefix;

#pragma mark - 详细接口地址
/** 登录*/
UIKIT_EXTERN NSString *const kLogin;
/** 退出登录*/
UIKIT_EXTERN NSString *const kExit;

/** 获取图书的全部评论*/
UIKIT_EXTERN NSString *const kBookCooments;
/** 书城图书首页*/
UIKIT_EXTERN NSString *const kBookPage;
/** 书城期刊首页*/
UIKIT_EXTERN NSString *const kMagazinePage;
/** 书城报纸首页*/
UIKIT_EXTERN NSString *const kNewspaperPage;
/** 下载报纸API*/
UIKIT_EXTERN NSString *const kDownloadNewspaper;
/** 书城图书首页上拉加载*/
UIKIT_EXTERN NSString *const kBookLatestOfPage;
/** 书城期刊首页上拉加载*/
UIKIT_EXTERN NSString *const kMagazineLatestOfPage;
/** 推荐杂志*/
UIKIT_EXTERN NSString *const kMagazineRecommend;


/** QRCodeDownload*/
UIKIT_EXTERN NSString *const kQRCodeDownload;
/** 获取期刊分类*/
UIKIT_EXTERN NSString *const kMagazineCategories;
/** 获取往期期刊*/
UIKIT_EXTERN NSString *const kHistoryMagazines;
/** 获取收藏期刊*/
UIKIT_EXTERN NSString *const kFavoriteMagazines;
/** 获取个人收藏历史*/
UIKIT_EXTERN NSString *const kFavoriteHistory;
/** 获取收藏图书*/
UIKIT_EXTERN NSString *const kFavoriteBook;
/** 获取图书分类列表*/
UIKIT_EXTERN NSString *const kBookCategories;
/** 获取精品图书*/
UIKIT_EXTERN NSString *const kBookBoutiques;
/** 获取分类图书列表 搜索图书*/
UIKIT_EXTERN NSString *const kBookList;
/** 获取一本图书详情*/
UIKIT_EXTERN NSString *const kABookDetail;
/** 读过该书的人还读过*/
UIKIT_EXTERN NSString *const kRelationBook;
/** 获取图书分页资源和整本资源*/
UIKIT_EXTERN NSString *const kReadBook;
/** 获取杂志详情*/
UIKIT_EXTERN NSString *const kMagazineDetail;
/** 获取杂志下载地址*/
UIKIT_EXTERN NSString *const kMagazineDownload;
/** 获取杂志列表*/
UIKIT_EXTERN NSString *const kMagazineList;


/** 获取喜爱的报纸*/
UIKIT_EXTERN NSString *const kFavoriteNewspaper;
/** 获取报纸下载地址*/
UIKIT_EXTERN NSString *const kNewspaperDownload;
/** 获取报纸分类*/
UIKIT_EXTERN NSString *const kNewspaperCategories;
/** 获取精品报纸*/
UIKIT_EXTERN NSString *const kNewspaperBoutiques;
/** 获取报纸列表 搜索报纸*/
UIKIT_EXTERN NSString *const kNewspaperLatestList;
/** 获取报纸地域信息*/
UIKIT_EXTERN NSString *const kNewspaperRegion;
/** 获取历史报纸*/
UIKIT_EXTERN NSString *const kHistoryNewspaper;
/** 获取一期报纸详情*/
UIKIT_EXTERN NSString *const kANewspaperDetail;
/** 根据报纸名称ID和报纸期ID获取报纸*/
UIKIT_EXTERN NSString *const kReadNewspaper;



