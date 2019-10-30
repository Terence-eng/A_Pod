//
//  AViewController.m
//  A_Pod
//
//  Created by Terrence on 2019/10/25.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B_Category.h>
@interface AViewController ()
@property (nonatomic, strong) UIButton *pushB_btn;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"A ViewController";
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *pushBBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushBBtn setTitle:@"push B View" forState:UIControlStateNormal];
    [pushBBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    pushBBtn.center = self.view.center;
    [pushBBtn sizeToFit];
    [pushBBtn addTarget:self action:@selector(didTappedPushBViewControllerButton) forControlEvents:UIControlEventTouchUpInside];
    self.pushB_btn = pushBBtn;
    [self.view addSubview:pushBBtn];
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.pushB_btn.center = self.view.center;
}

- (void)didTappedPushBViewControllerButton {
    UIViewController *bvc = [[CTMediator sharedInstance] B_ViewController];
    [self.navigationController pushViewController:bvc animated:YES];
}
@end
