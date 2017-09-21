//
//  YGInterfacedConst.m
//  仿搜狗阅读
//
//  Created by YG on 2017/9/5.
//  Copyright © 2017年 YinTokey. All rights reserved.
//

#import "YGInterfacedConst.h"

//#define BASEURL @"http://120.76.99.94:8080" http

//#define BASEURL @"https://web.iyougu.com:8082" https


#if DevelopSever
/** 接口前缀-开发服务器*/
NSString *const kApiPrefix = @"接口服务器的请求前缀 例: http://192.168.10.10:8080";
#elif TestSever
/** 接口前缀-测试服务器*/
NSString *const kApiPrefix = @"http://120.76.99.94:8088";
#elif ProductSever
/** 接口前缀-生产服务器*/
NSString *const kApiPrefix = @"https://web.iyougu.com:8082";
#endif

/** 登录*/
NSString *const kLogin = @"/ReadPaper/userLoginMsg";
/** 退出登录*/
NSString *const kExit = @"/ReadPaper/userLogoutMsg";

/** 获取图书的全部评论*/
NSString *const kBookCooments = @"/ReadPaper/GetBookComments";
/** 书城图书首页*/
NSString *const kBookPage = @"/ReadPaper/BookPage";
/** 书城期刊首页*/
NSString *const kMagazinePage = @"/ReadPaper/MagazinePage";
/** 书城报纸首页*/
NSString *const kNewspaperPage = @"/ReadPaper/NewspaperPageData";
/** 下载报纸API*/
NSString *const kDownloadNewspaper = @"/ReadPaper/DownloadNewspaper";
/** 书城图书首页上拉加载*/
NSString *const kBookLatestOfPage = @"/ReadPaper/GetBookList";
/** 书城期刊首页上拉加载*/
NSString *const kMagazineLatestOfPage = @"/ReadPaper/GetMaganizeLatestOfPageMsg";
/** 推荐杂志*/
NSString *const kMagazineRecommend = @"/ReadPaper/GetMagazineLatestListMsg";



/** QRCodeDownload*/
NSString *const kQRCodeDownload = @"/ReadPaper/GetQRCodeDownload";


/** 获取期刊分类*/
NSString *const kMagazineCategories = @"/ReadPaper/GetMagazineCategoriesMsg";
/** 获取往期期刊*/
NSString *const kHistoryMagazines = @"/ReadPaper/GetMagazineHistoryMsg";
/** 获取收藏期刊*/
NSString *const kFavoriteMagazines = @"/ReadPaper/CollectMagazine";
/** 获取个人收藏历史*/
NSString *const kFavoriteHistory = @"/ReadPaper/getCollectHistoryMsg";
/** 获取收藏图书*/
NSString *const kFavoriteBook = @"/ReadPaper/CollectBook";
/** 获取图书分类列表*/
NSString *const kBookCategories = @"/ReadPaper/GetBookCategoriesDBMsg";
/** 获取精品图书*/
NSString *const kBookBoutiques = @"/ReadPaper/GetBoutiqueBookMsg";
/** 获取分类图书列表 搜索图书*/
NSString *const kBookList = @"/ReadPaper/GetBookListMsg";
/** 获取一本图书详情*/
NSString *const kABookDetail = @"/ReadPaper/GetBookInfoMsg";
/** 读过该书的人还读过*/
NSString *const kRelationBook = @"/ReadPaper/GetCorrelationBook";
/** 获取图书分页资源和整本资源*/
NSString *const kReadBook = @"/ReadPaper/ReadBook";
/** 获取杂志详情*/
NSString *const kMagazineDetail = @"/ReadPaper/magazineEditionMsg";
/** 获取杂志下载地址*/
NSString *const kMagazineDownload = @"/ReadPaper/ReadMagazine";
/** 获取杂志列表*/
NSString *const kMagazineList = @"/ReadPaper/GetMaganizeLatestOfPageMsg";


/** 获取收藏的报纸*/
NSString *const kFavoriteNewspaper = @"/ReadPaper/CollectNewspaper";
/** 获取报纸下载地址*/
NSString *const kNewspaperDownload = @"/ReadPaper/DownloadNewspaper";
/** 获取报纸分类*/
NSString *const kNewspaperCategories = @"/ReadPaper/GetNewspaperCategoriesMsg";
/** 获取精品报纸*/
NSString *const kNewspaperBoutiques = @"/ReadPaper/GetNewpaperBoutiquesMsg";
/** 获取报纸列表 搜索报纸*/
NSString *const kNewspaperLatestList = @"/ReadPaper/NewspaperLatestList";
/** 获取报纸地域信息*/
NSString *const kNewspaperRegion = @"/ReadPaper/GetNewspaperRegionsMsg";
/** 获取历史报纸*/
NSString *const kHistoryNewspaper = @"/ReadPaper/GetHistoryNewspaperMsg";
/** 获取一期报纸详情*/
NSString *const kANewspaperDetail = @"/ReadPaper/GetPeriodicalMsg";
/** 根据报纸名称ID和报纸期ID获取报纸*/
NSString *const kReadNewspaper = @"/ReadPaper/ReadNewspaper";




