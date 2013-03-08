//
//  ViewController.h
//  UIPageControl01
//
//  Created by OSX on 3/3/13.
//  Copyright (c) 2013 OSX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, retain) IBOutlet UIScrollView* scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl* pageControl;

@end
