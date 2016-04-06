//
//  RatingView.h
//  StarRatingView
//
//  Created by liaojinxing on 14-5-4.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarRatingViewConfiguration : NSObject

// star configuration
@property (nonatomic, assign) CGFloat starWidth;
@property (nonatomic, assign) BOOL rateEnabled; // default is YES

// star image, these should not be nil
@property (nonatomic, strong, nonnull) NSString *fullImage;
@property (nonatomic, strong, nonnull) NSString *halfImage;
@property (nonatomic, strong, nonnull) NSString *emptyImage;

@end

typedef void (^StarRatingViewAction)();

@interface StarRatingView : UIView

- (nullable instancetype)initWithFrame:(CGRect)frame configuration:(nonnull StarRatingViewConfiguration *)configuration;

// rating
@property (nonatomic, assign) CGFloat rating;
- (void)setRating:(CGFloat)rating completion:(nullable StarRatingViewAction)completion;

@end
