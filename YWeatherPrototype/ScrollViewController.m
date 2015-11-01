//
//  ScrollViewController.m
//  YWeatherPrototype
//
//  Created by Marco Lau on 1/11/2015.
//  Copyright © 2015 Marco Lau. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *pagedScrollView;
@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pagedScrollView.contentSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height);
    self.pagedScrollView.pagingEnabled = YES;
    self.pagedScrollView.bounces = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
