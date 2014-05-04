
StarRatingView
================
Star rating view, often used in vote. Easy to use, and flexible configurations.

![StarRating1](ScreenShot/rating1.png)

![StarRating2](ScreenShot/rating2.png)

Installation
-------------------------
- Grab the source file into your project. 
- Or use cocoapods. Here is an example of your podfile:

```
pod 'StarRatingView'
```

Usage
-------
```
StarRatingView *ratingView = [[StarRatingView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 20)];
[ratingView displayRating:4.0f];    // rate range:[0,5]
```

Configure the view if you needed:
```
ratingView.rateEnabled = YES;
ratingView.starWidth = 20.0f;

// set star image
ratingView.fullImage = @"ic_starwhite.png";
ratingView.halfImage = @"ic_starwhitehalf.png";
ratingView.emptyImage = @"ic_starwhiteept";
```


License
------
StarRatingView is available under the MIT license. See the LICENSE file for more info.
