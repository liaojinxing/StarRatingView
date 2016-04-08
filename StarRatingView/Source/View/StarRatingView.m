//
//  RatingView.m
//  StarRatingView
//
//  Created by liaojinxing on 14-5-4.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

#import "StarRatingView.h"

@interface StarRatingView ()

@property (nonatomic, strong) NSMutableArray *starButtons;
@property (nonatomic, copy) StarRatingViewAction ratingAction;
@property (nonatomic, strong) StarRatingViewConfiguration *configuration;

@end

@implementation StarRatingViewConfiguration

@end


@implementation StarRatingView

- (nullable instancetype)initWithFrame:(CGRect)frame configuration:(nonnull StarRatingViewConfiguration *)configuration {
  if (!configuration.fullImage || !configuration.emptyImage || !configuration.halfImage) {
    return nil;
  }

  self = [super initWithFrame:frame];
  if (self) {
    _starButtons = [[NSMutableArray alloc] initWithCapacity:5];
    for (int i = 0; i < 5; i++) {
      UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
      CGFloat starWidth = configuration.starWidth? configuration.starWidth: 16;
      [button setFrame:CGRectMake(starWidth * i, 0, starWidth, starWidth)];
      [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      button.tag = i;
      [button setUserInteractionEnabled:configuration.rateEnabled];
      if (configuration.rateEnabled) {
        [button  addTarget:self action:@selector(rate:) forControlEvents:UIControlEventTouchUpInside];
      }
      [self addSubview:button];
      [_starButtons addObject:button];
    }

    self.configuration = configuration;
  }
  return self;
}

- (void)rate:(id)sender {
  UIButton *button = (UIButton *)sender;
  [self setRating:button.tag + 1];
}

- (void)setRating:(CGFloat)rating completion:(nullable StarRatingViewAction)completion {
    [self setRating:rating];
    if (completion) {
        completion();
    }
}

- (void)setRating:(CGFloat)rating {
  _rating = rating;
  UIImage *starFull = [UIImage imageNamed:self.configuration.fullImage];
  UIImage *starHalf = [UIImage imageNamed:self.configuration.halfImage];
  UIImage *starEmpty = [UIImage imageNamed:self.configuration.emptyImage];

  rating = round(rating * 2) / 2;
  int fullStars = floor(rating);
  int i;
  for (i = 0; i < fullStars; i++) {
    UIButton *button = [_starButtons objectAtIndex:i];
    [button setImage:starFull forState:UIControlStateNormal];
  }

  if (rating - fullStars >= 0.5) {
    UIButton *button = [_starButtons objectAtIndex:fullStars];
    [button setImage:starHalf forState:UIControlStateNormal];
    i++;
  }

  for (; i < 5; i++) {
    UIButton *button = [_starButtons objectAtIndex:i];
    [button setImage:starEmpty forState:UIControlStateNormal];
  }
}

@end
