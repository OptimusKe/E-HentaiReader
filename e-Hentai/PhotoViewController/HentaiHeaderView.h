//
//  HentaiHeaderView.h
//  e-Hentai
//
//  Created by Jack on 2014/9/30.
//  Copyright (c) 2014年 ChilunChen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXBlurView.h"
#import <QuartzCore/QuartzCore.h>

@interface HentaiHeaderView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *hentaiImage;
@property (weak, nonatomic) IBOutlet UIImageView *hentaiThumbImage;
@property (weak, nonatomic) IBOutlet UILabel *hentaiCategory;
@property (weak, nonatomic) IBOutlet UILabel *hentaiPageSize;
@property (weak, nonatomic) IBOutlet UILabel *hentaiTitle;
@property (weak, nonatomic) IBOutlet UILabel *hentaiTitleJpn;
@property (weak, nonatomic) IBOutlet UILabel *hentaiUploader;
@property (weak, nonatomic) IBOutlet UILabel *hentaiDate;
@property (weak, nonatomic) IBOutlet UILabel *hentaiRatingStar;
@property (weak, nonatomic) IBOutlet UILabel *hentaiRating;

@property (weak, nonatomic) IBOutlet FXBlurView *blurView;

- (void)setHentaiDict:(NSDictionary *)hentaiDict;

@end
