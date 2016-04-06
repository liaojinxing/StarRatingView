//
//  ExampleViewController.m
//  StarRatingView
//
//  Created by liaojinxing on 14-5-4.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

#import "ExampleViewController.h"
#import "StarRatingView.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self.view setBackgroundColor:[UIColor grayColor]];

  StarRatingViewConfiguration *conf = [[StarRatingViewConfiguration alloc] init];
  conf.rateEnabled = YES;
  conf.starWidth = 40.0f;
  conf.fullImage = @"ic_starwhite.png";
  conf.halfImage = @"ic_starwhitehalf.png";
  conf.emptyImage = @"ic_starwhiteept";
  StarRatingView *ratingView = [[StarRatingView alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 50, 50) configuration:conf];
  
  [ratingView setRating:4.25 completion:^{
      NSLog(@"rate done");
  }];
  [self.view addSubview:ratingView];
}

@end
