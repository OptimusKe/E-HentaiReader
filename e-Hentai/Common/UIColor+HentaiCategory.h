//
//  UIColor+HentaiCategory.h
//  e-Hentai
//
//  Created by Jack on 2014/10/1.
//  Copyright (c) 2014年 ChilunChen. All rights reserved.
//

#import <UIKit/UIKit.h>

#define colorDoujinshi    [UIColor colorWithRed:251.0 / 255.0 green:99.0 / 255.0 blue:102.0 / 255.0 alpha:1]
#define colorManga        [UIColor colorWithRed:252.0 / 255.0 green:194.0 / 255.0 blue:82.0 / 255.0 alpha:1]
#define colorArtistcg     [UIColor colorWithRed:238.0 / 255.0 green:230.0 / 255.0 blue:102.0 / 255.0 alpha:1]
#define colorGamecg       [UIColor colorWithRed:192.0 / 255.0 green:129.0 / 255.0 blue:127.0 / 255.0 alpha:1]
#define colorWestern      [UIColor colorWithRed:170.0 / 255.0 green:255.0 / 255.0 blue:87.0 / 255.0 alpha:1]
#define colorNonh         [UIColor colorWithRed:132.0 / 255.0 green:199.0 / 255.0 blue:255.0 / 255.0 alpha:1]
#define colorImageset     [UIColor colorWithRed:108.0 / 255.0 green:96.0 / 255.0 blue:255.0 / 255.0 alpha:1]
#define colorCosplay      [UIColor colorWithRed:144.0 / 255.0 green:97.0 / 255.0 blue:181.0 / 255.0 alpha:1]
#define colorAsianporn    [UIColor colorWithRed:245.0 / 255.0 green:175.0 / 255.0 blue:246.0 / 255.0 alpha:1]
#define colorMisc         [UIColor colorWithRed:219.0 / 255.0 green:219.0 / 255.0 blue:219.0 / 255.0 alpha:1]
#define colorAll          [UIColor grayColor]

//Flat Blue
#define CORLOR_TEXT  [UIColor colorWithRed:52.0 / 255.0 green:152.0 / 255.0 blue:219.0 / 255.0 alpha:1]

@interface UIColor (HentaiCategory)

+ (UIColor *)hentaiCategoryColor:(NSString *)category;

@end
