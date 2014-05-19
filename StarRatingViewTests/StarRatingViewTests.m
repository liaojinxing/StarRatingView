//
//  StarRatingViewTests.m
//  StarRatingViewTests
//
//  Created by liaojinxing on 14-5-4.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

SpecBegin(StarRatingView)

__block StarRatingView* view;

beforeEach(^{
    view = [[StarRatingView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
});

describe(@"rating", ^{
    it(@"defaults to zero", ^{
        expect(view.rating).to.equal(0);
    });
    
    it(@"can be set", ^{
        view.rating = 3.5f;
        expect(view.rating).to.equal(3.5f);
    });
});

SpecEnd

