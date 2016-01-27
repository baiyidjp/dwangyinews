//
//  MainTabbarController.m
//  163NEWS
//
//  Created by dongjiangpeng on 16/1/26.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "MainTabbarController.h"
#import "FoundController.h"
#import "MeController.h"
#import "MediaController.h"
#import "NewsController.h"
#import "ReaderController.h"

@interface MainTabbarController ()

@end

@implementation MainTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addChildControllerWithTitle:@"新闻" imageName:@"tabbar_icon_news_normal" selectName:@"tabbar_icon_news_highlight" ctrlClass:@"NewsController"];
    [self addChildControllerWithTitle:@"阅读" imageName:@"tabbar_icon_reader_normal" selectName:@"tabbar_icon_reader_highlight" ctrlClass:@"ReaderController"];
    [self addChildControllerWithTitle:@"视听" imageName:@"tabbar_icon_media_normal" selectName:@"tabbar_icon_media_highlight" ctrlClass:@"MediaController"];
    [self addChildControllerWithTitle:@"发现" imageName:@"tabbar_icon_found_normal" selectName:@"tabbar_icon_found_highlight" ctrlClass:@"FoundController"];
    [self addChildControllerWithTitle:@"我" imageName:@"tabbar_icon_me_normal" selectName:@"tabbar_icon_me_highlight" ctrlClass:@"MeController"];
    
}

- (void)addChildControllerWithTitle:(NSString *)title imageName:(NSString *)imageName selectName:(NSString *)selectName ctrlClass:(NSString *)className{

    Class class = NSClassFromString(className);
    UIViewController *ctrl = class.new;
    ctrl.title = title;
    ctrl.tabBarItem.title = title;
    ctrl.tabBarItem.image = [UIImage imageNamed:imageName];
    ctrl.tabBarItem.selectedImage = [[UIImage imageNamed:selectName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [ctrl.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]} forState:UIControlStateSelected];
    UINavigationController *navCtrl = [[UINavigationController alloc]initWithRootViewController:ctrl];
    [self addChildViewController:navCtrl];
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
