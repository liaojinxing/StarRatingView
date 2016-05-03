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

Subscription
-------
欢迎关注[简书]，关注微信公众号(iOSers)，订阅高质量原创技术文章：

<img src="http://upload-images.jianshu.io/upload_images/1859836-2f44998e2341e34d.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240" alt="公众号" width="300px" hspace="10"/>

[简书]:http://www.jianshu.com/users/25481f0294aa/latest_articles
