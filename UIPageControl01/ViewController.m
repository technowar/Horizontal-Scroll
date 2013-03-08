//
//  ViewController.m
//  UIPageControl01
//
//  Created by OSX on 3/3/13.
//  Copyright (c) 2013 OSX. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView;
@synthesize pageControl;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    pageControl.currentPage = 0;
    pageControl.numberOfPages = 6;
    
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    pageControl.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
}

- (void)contentSize
{
    for (int i = 0; i < 6; i++) {
        CGRect textViewFrame = CGRectMake(scrollView.frame.size.width * i, 20.0, 320.0, scrollView.frame.size.height - 20.0);
        CGRect labelFrame = CGRectMake(scrollView.frame.size.width * i, 0.0, 320.0, 20.0);

        textViewFrame.size = scrollView.frame.size;
        
        UITextView *textView = [[UITextView alloc] initWithFrame:textViewFrame];
        UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
        
        switch (i) {
            case 0:
                label.text = @"Lorem ipsum";
                textView.text = @"dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.";
                break;
                
            case 1:
                label.text = @"Ut wisi enim";
                textView.text = @"ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.";
                break;
                
            case 2:
                label.text = @"Duis autem";
                textView.text = @"vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.";
                break;
                
            case 3:
                label.text = @"Nam liber";
                textView.text = @"tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.";
                break;
                
            case 4:
                label.text = @"Typi non";
                textView.text = @"habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.";
                break;
                
            case 5:
                label.text = @"Claritas est";
                textView.text = @"etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.";
                break;
                
            default:
                break;
        }
        
        textView.editable = NO;
        textView.textColor = [UIColor grayColor];
        textView.textAlignment = NSTextAlignmentRight;
        [textView setFont:[UIFont fontWithName:@"Symbol" size:13]];
        
        label.textAlignment = NSTextAlignmentLeft;
        [label setFont:[UIFont fontWithName:@"AmericanTypewriter" size:20]];
        [label sizeToFit];
        
        [scrollView addSubview:textView];
        [scrollView addSubview:label];
        
        textView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * 6, scrollView.frame.size.height);
}

- (void)viewDidLayoutSubviews
{
    [self contentSize];
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    CGFloat pageWidth = scrollView.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}

@end
