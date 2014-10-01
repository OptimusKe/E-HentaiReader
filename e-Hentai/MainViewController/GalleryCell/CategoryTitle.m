//
//  CategoryTitle.m
//  e-Hentai
//
//  Created by Jack on 2014/9/5.
//  Copyright (c) 2014年 ChilunChen. All rights reserved.
//

#import "CategoryTitle.h"
#import "UIColor+HentaiCategory.h"

@implementation CategoryTitle


- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
		self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.7];
		categoryString = @"";
		categoryLabel = [UILabel new];
		[self addSubview:categoryLabel];
	}
	return self;
}

- (void)setCategoryStr:(NSString *)category {
	categoryString = category;
	categoryLabel.textColor = [UIColor hentaiCategoryColor:category];
	[self layoutSubviews];
}

- (void)layoutSubviews {
	CGRect labelFrame = CGRectOffset(self.bounds, 5, 0); //padding 5
	categoryLabel.frame = labelFrame;
	categoryLabel.backgroundColor = [UIColor clearColor];
	categoryLabel.font = [UIFont systemFontOfSize:14.0];
	categoryLabel.text = categoryString;

	self.layer.cornerRadius = CGRectGetHeight(self.bounds) / 4;
}

@end
