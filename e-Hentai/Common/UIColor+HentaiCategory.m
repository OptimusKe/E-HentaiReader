//
//  UIColor+HentaiCategory.m
//  e-Hentai
//
//  Created by Jack on 2014/10/1.
//  Copyright (c) 2014年 ChilunChen. All rights reserved.
//

#import "UIColor+HentaiCategory.h"

@implementation UIColor (HentaiCategory)

+ (UIColor *)hentaiCategoryColor:(NSString *)category {
	NSDictionary *mapping = @{ @"Doujinshi"       : colorDoujinshi,
		                       @"Manga"           : colorManga,
		                       @"Artist CG Sets"  : colorArtistcg,
		                       @"Game CG Sets"    : colorGamecg,
		                       @"Western"         : colorWestern,
		                       @"Non-H"           : colorNonh,
		                       @"Image Sets"      : colorImageset,
		                       @"Cosplay"         : colorCosplay,
		                       @"Asian Porn"      : colorAsianporn };
	return mapping[category] ? : colorMisc;
}

@end
