#import "AppDelegate.h"
#import "MovieListViewController.h"
#import "MainTabBarController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // 电影列表视图控制器
    MovieListViewController *movieListVC = [[MovieListViewController alloc] init];
    
    // 创建导航控制器（类似于React Router中的导航包装）
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:movieListVC];
    
    MainTabBarController *tabBarController = [[MainTabBarController alloc] init];

       
    
//    // 创建一个基础视图控制器
//    UIViewController *rootVC = [[UIViewController alloc] init];
//    // 设置背景色为红色（这样我们能清楚地看到效果）
//    rootVC.view.backgroundColor = [UIColor redColor];
    
    // 设置根视图控制器
    self.window.rootViewController = tabBarController;
    
    // 显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
