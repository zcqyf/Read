//
//  YGConfig.h
//  YouguRead
//
//  Created by YG on 2017/9/21.
//  Copyright © 2017年 YG. All rights reserved.
//

#ifndef YGConfig_h
#define YGConfig_h

// NSUserDefaults
#define YGUserDefaults [NSUserDefaults standardUserDefaults]

// UIScreen
#define YGScreenBounds [UIScreen mainScreen].bounds
#define YGScreenWidth [UIScreen mainScreen].bounds.size.width
#define YGScreenHeight [UIScreen mainScreen].bounds.size.height

// UIColor
#define YGColor(r, g, b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0f]
#define YGAColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

// UIFont
#define YGFont(fontName,font)    [UIFont fontWithName:(fontName) size:(font)]

#endif /* YGConfig_h */
