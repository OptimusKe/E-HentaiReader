//
//  HentaiFilterView.m
//  e-Hentai
//
//  Created by OptimusKe on 2014/9/28.
//  Copyright (c) 2014年 ChilunChen. All rights reserved.
//

#import "HentaiFilterView.h"
#import "HentaiSearchFilter.h"
#import "UIColor+HentaiCategory.h"

@interface HentaiFilterView ()
{
	NSMutableArray *filterEnableArray;
}


@end

@implementation HentaiFilterView

- (id)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blackColor];
		[self setButtons];
	}
	return self;
}

- (void)selectAll {
	for (int i = 0; i < filterEnableArray.count; i++) {
		[filterEnableArray replaceObjectAtIndex:i withObject:@(YES)];
	}

	for (UIButton *btn in self.subviews) {
		[self setButtonEnableStyle:btn enable:YES];
	}
}

- (NSArray *)filterResult {
	NSMutableArray *resultArray = [NSMutableArray array];

	for (int i = 0; i < filterEnableArray.count; i++) {
		NSNumber *filterNum = [filterEnableArray objectAtIndex:i];
		if ([filterNum boolValue]) {
			[resultArray addObject:@(i)];
		}
	}

	return resultArray;
}

#pragma mark - private


- (void)setButtons {
	filterEnableArray = [NSMutableArray arrayWithCapacity:10];

	for (int i = 0; i < 10; i++) {
		CGFloat x = (i % 2 == 0) ? 0 : CGRectGetWidth(self.frame) / 2;
		CGFloat y = (i / 2) * 40;

		//init all Tag YES
		NSNumber *tapTag = @(YES);
		[filterEnableArray insertObject:tapTag atIndex:i];

		UIButton *filterBtn = [[UIButton alloc] initWithFrame:CGRectMake(x, y, CGRectGetWidth(self.frame) / 2, 40)];
		filterBtn.tag = i;
		filterBtn.titleLabel.textColor = [UIColor whiteColor];
		NSNumber *filterTag = @(i);
		filterBtn.backgroundColor = [self colorMapping:filterTag];
		[filterBtn setTitle:[self titleMapping:filterTag] forState:UIControlStateNormal];
		[filterBtn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
		[filterBtn addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
		[self addSubview:filterBtn];
	}
}

- (UIColor *)colorMapping:(NSNumber *)filterTag {
	NSDictionary *mapping = @{ @(HentaiFilterTypeDoujinshi) : colorDoujinshi,
		                       @(HentaiFilterTypeManga)     : colorManga,
		                       @(HentaiFilterTypeArtistcg)  : colorArtistcg,
		                       @(HentaiFilterTypeGamecg)    : colorGamecg,
		                       @(HentaiFilterTypeWestern)   : colorWestern,
		                       @(HentaiFilterTypeNonh)      : colorNonh,
		                       @(HentaiFilterTypeImagesets) : colorImageset,
		                       @(HentaiFilterTypeCosplay)   : colorCosplay,
		                       @(HentaiFilterTypeAsianporn) : colorAsianporn,
		                       @(HentaiFilterTypeMisc)      : colorMisc };
	return mapping[filterTag] ? mapping[filterTag] : colorAll;
}

- (NSString *)titleMapping:(NSNumber *)filterTag {
	NSDictionary *mapping = @{ @(HentaiFilterTypeDoujinshi) : @"Doujinshi",
		                       @(HentaiFilterTypeManga)     : @"Manga",
		                       @(HentaiFilterTypeArtistcg)  : @"Artistcg",
		                       @(HentaiFilterTypeGamecg)    : @"Gamecg",
		                       @(HentaiFilterTypeWestern)   : @"Western",
		                       @(HentaiFilterTypeNonh)      : @"Nonh",
		                       @(HentaiFilterTypeImagesets) : @"Imageset",
		                       @(HentaiFilterTypeCosplay)   : @"Cosplay",
		                       @(HentaiFilterTypeAsianporn) : @"Asianporn",
		                       @(HentaiFilterTypeMisc)      : @"Misc" };
	return mapping[filterTag] ? mapping[filterTag] : @"All";
}

- (void)setButtonEnableStyle:(UIButton *)btn enable:(BOOL)enable {
	NSNumber *filterTag = @(btn.tag);
	if (enable) {
		btn.backgroundColor = [self colorMapping:filterTag];
		[btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	}
	else {
		btn.backgroundColor = [UIColor blackColor];
		[btn setTitleColor:[self colorMapping:filterTag] forState:UIControlStateNormal];
	}
}

- (void)buttonPress:(UIButton *)btn {
	BOOL enable = [[filterEnableArray objectAtIndex:btn.tag] boolValue];
	enable = !enable;
	[filterEnableArray replaceObjectAtIndex:btn.tag withObject:@(enable)];
	[self setButtonEnableStyle:btn enable:enable];
}

@end
