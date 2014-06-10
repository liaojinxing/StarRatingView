//
//  RatingView.h
//  StarRatingView
//
//  Created by liaojinxing on 14-5-4.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarRatingView : UIView

- (id)initWithFrame:(CGRect)frame rateEnabled:(BOOL)rateEnabled;

// star configuration
@property (nonatomic, assign) CGFloat starWidth;
@property (nonatomic, assign) BOOL rateEnabled;

// star image
@property (nonatomic, strong) NSString *fullImage;
@property (nonatomic, strong) NSString *halfImage;
@property (nonatomic, strong) NSString *emptyImage;
@property (nonatomic, assign) CGFloat rating;
@end
