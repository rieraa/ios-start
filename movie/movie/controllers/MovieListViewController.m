

#import "MovieListViewController.h"

@implementation MovieListViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置背景色为白色
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 设置导航栏标题
    self.title = @"电影列表";
    
    // 添加一个测试标签（类似于React中的<Text>组件）
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    testLabel.text = @"欢迎来到电影列表";
    [self.view addSubview:testLabel];
}
@end
