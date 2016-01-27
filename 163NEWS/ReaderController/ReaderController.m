//
//  ReaderController.m
//  163NEWS
//
//  Created by dongjiangpeng on 16/1/26.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "ReaderController.h"

@interface ReaderController ()

@end

@implementation ReaderController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

@end
