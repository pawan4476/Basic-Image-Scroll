//
//  ViewController.m
//  BasicImageScroll
//
//  Created by Nagam Pawan on 1/5/17.
//  Copyright © 2017 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self lodImagesandDisplay];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)lodImagesandDisplay{
    
    NSArray *imagesArray = [NSArray arrayWithObjects:[UIImage imageNamed:@"MSFT.png"], [UIImage imageNamed:@"NFG.png"], [UIImage imageNamed:@"NFLX.png"], [UIImage imageNamed:@"NI.png"], [UIImage imageNamed:@"NKE.png"], [UIImage imageNamed:@"NVDA.png"], [UIImage imageNamed:@"OHI.png"], [UIImage imageNamed:@"ORCL.png"], nil];
    [self.myScroll setContentSize:CGSizeMake(self.myScroll.frame.size.width * [imagesArray count], self.myScroll.frame.size.height)];
    self.myScroll.pagingEnabled = YES;
    for (int i = 0; i < [imagesArray count]; i++) {
        
        UIImageView *myImageView = [[UIImageView alloc] initWithFrame:CGRectMake(i * self.myScroll.frame.size.width, self.myScroll.frame.origin.y, self.myScroll.frame.size.width, self.myScroll.frame.size.height)];
        myImageView.image = [imagesArray objectAtIndex:i];
        myImageView.contentMode = UIViewContentModeScaleAspectFill;
        myImageView.clipsToBounds = YES;
        [self.myScroll addSubview:myImageView];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
