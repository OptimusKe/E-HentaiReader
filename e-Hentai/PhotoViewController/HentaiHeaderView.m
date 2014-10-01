//
//  HentaiHeaderView.m
//  e-Hentai
//
//  Created by Jack on 2014/9/30.
//  Copyright (c) 2014年 ChilunChen. All rights reserved.
//

#import "HentaiHeaderView.h"
#import "UIColor+HentaiCategory.h"

@implementation HentaiHeaderView

- (id)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		// Initialization code
	}
	return self;
}

- (void)setHentaiDict:(NSDictionary *)hentaiDict {
	self.blurView.blurRadius = 5;
	self.blurView.tintColor = [UIColor darkGrayColor];

	self.hentaiCategory.backgroundColor = [UIColor hentaiCategoryColor:hentaiDict[@"category"]];

	self.hentaiImage.contentMode = UIViewContentModeScaleAspectFill;
	[self.hentaiImage setClipsToBounds:YES];
	[self.hentaiImage sd_setImageWithURL:[NSURL URLWithString:hentaiDict[@"thumb"]] placeholderImage:nil options:SDWebImageRefreshCached];

	self.hentaiThumbImage.contentMode = UIViewContentModeScaleAspectFit;
	[self.hentaiThumbImage sd_setImageWithURL:[NSURL URLWithString:hentaiDict[@"thumb"]] placeholderImage:nil options:SDWebImageRefreshCached];

	self.hentaiCategory.text    = hentaiDict[@"category"];
	self.hentaiRatingStar.text  = [self ratingStarByRating:hentaiDict[@"rating"]];
	self.hentaiRating.text      = [NSString stringWithFormat:@"(%@)", hentaiDict[@"rating"]];
	self.hentaiPageSize.text    = [NSString stringWithFormat:@"%@P / %@", hentaiDict[@"filecount"], hentaiDict[@"filesize"]];
	self.hentaiTitle.text       = hentaiDict[@"title"];
	self.hentaiTitleJpn.text    = hentaiDict[@"title_jpn"];
	self.hentaiUploader.text    = hentaiDict[@"uploader"];
	self.hentaiDate.text        = hentaiDict[@"posted"];

}

- (NSString *)ratingStarByRating:(NSString *)rating {
	int ratingNum = roundf([rating floatValue]);
	NSString *ratingString = @"";

	for (int i = 0; i < 5; i++) {
		if (i < ratingNum) {
			ratingString = [ratingString stringByAppendingString:@"★"];
		}
		else {
			ratingString = [ratingString stringByAppendingString:@"☆"];
		}
	}
	return ratingString;
}

@end
