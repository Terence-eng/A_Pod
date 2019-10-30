//
//  GTViewController.m
//  A_Pod
//
//  Created by Jamie-Ling-iOS on 10/24/2019.
//  Copyright (c) 2019 Jamie-Ling-iOS. All rights reserved.
//

#import "GTViewController.h"
#import <CTMediator/CTMediator.h>
#import <objc/runtime.h>
#import "Target_A.h"
@interface GTViewController ()

@end

@implementation GTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSString *actionString = [NSString stringWithFormat:@"Action_viewController"];
//    SEL action = NSSelectorFromString(actionString);
//    Target_A *target = [Target_A new];
//    if ([target respondsToSelector:@selector(Action_viewController:)]) {
//        NSLog(@"success");
//    }
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"value",@"2", nil];
    UIViewController *vc = (UIViewController *)[[CTMediator sharedInstance] performTarget:@"A" action:@"viewController" params:dic shouldCacheTarget:NO];
    [self presentViewController:vc animated:YES completion:NULL];
//    [self presentVie]
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
