//
//  NewsController.m
//  163NEWS
//
//  Created by dongjiangpeng on 16/1/26.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "NewsController.h"

@interface NewsController ()

@end

@implementation NewsController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self creatTopView];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)creatTopView{
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, KWIDTH, TOPNAVH)];
    topView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"top_navigation_background"]];
    UIButton *leftBtn = [[UIButton alloc]init];
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"top_navi_bell_highlight"] forState:UIControlStateNormal];
    leftBtn.size = leftBtn.currentBackgroundImage.size;
    leftBtn.left = KMARGIN;
    leftBtn.bottom = TOPNAVH - KMARGIN;
    [topView addSubview:leftBtn];
    UIButton *rightBtn = [[UIButton alloc]init];
    [rightBtn setBackgroundImage:[UIImage imageNamed:@"top_navigation_square"] forState:UIControlStateNormal];
    rightBtn.size = rightBtn.currentBackgroundImage.size;
    rightBtn.right = KWIDTH - KMARGIN;
    rightBtn.bottom = TOPNAVH - KMARGIN;
    [topView addSubview:rightBtn];
    UIImageView *midImage = [[UIImageView alloc]init];
    midImage.image = [UIImage imageNamed:@"11111"];
    midImage.width = CELLH;
    midImage.height = leftBtn.height;
    midImage.centerX = KWIDTH/2;
    midImage.bottom = TOPNAVH - KMARGIN;
    [topView addSubview:midImage];
    [self.view addSubview:topView];
}
@end
