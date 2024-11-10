//
//  MainTabBarController.m
//  movie
//
//  Created by 林文益 on 2024/11/10.
//


#import "MainTabBarController.h"
#import "MovieListViewController.h"

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建电影列表页面
    MovieListViewController *movieListVC = [[MovieListViewController alloc] init];
    UINavigationController *movieNavController = [[UINavigationController alloc] 
                                                initWithRootViewController:movieListVC];
    movieNavController.tabBarItem = [[UITabBarItem alloc] 
                                   initWithTitle:@"电影" 
                                   image:[UIImage systemImageNamed:@"film"] 
                                   tag:0];
    
    // 创建第二个标签页（暂时用普通的ViewController）
    UIViewController *favoriteVC = [[UIViewController alloc] init];
    favoriteVC.view.backgroundColor = [UIColor whiteColor];
    favoriteVC.title = @"收藏";
    UINavigationController *favoriteNavController = [[UINavigationController alloc] 
                                                   initWithRootViewController:favoriteVC];
    favoriteNavController.tabBarItem = [[UITabBarItem alloc] 
                                      initWithTitle:@"收藏" 
                                      image:[UIImage systemImageNamed:@"star"] 
                                      tag:1];
    
    // 设置标签页数组
    self.viewControllers = @[movieNavController, favoriteNavController];
}

@end
