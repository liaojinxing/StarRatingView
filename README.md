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
StarRatingView *ratingView = [[StarRatingView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 20) configuration:configuration];
ratingView.rating = 4.0f;    // rate range:[0,5]
```

Configure the view if you need it:
```
StarRatingViewConfiguration *conf = [[StarRatingViewConfiguration alloc] init];
conf.rateEnabled = YES;
conf.starWidth = 40.0f;
conf.fullImage = @"ic_starwhite.png";
conf.halfImage = @"ic_starwhitehalf.png";
conf.emptyImage = @"ic_starwhiteept";
```


License
------
StarRatingView is available under the MIT license. See the LICENSE file for more info.
