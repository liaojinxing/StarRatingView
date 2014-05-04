//
//  ExampleViewController.m
//  StarRatingView
//
//  Created by liaojinxing on 14-5-4.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

#import "ExampleViewController.h"
#import "RatingView.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad
{
  [self.view setBackgroundColor:[UIColor blueColor]];
  [super viewDidLoad];

  RatingView *ratingView = [[RatingView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 20)];
  ratingView.rateEnabled = YES;
  ratingView.starWidth = 50.0f;
  ratingView.fullImage = @"ic_starwhite.png";
  [ratingView displayRating:4.0f];
  [self.view addSubview:ratingView];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}



@end
