//
//  Target_A.m
//  A_Pod
//
//  Created by Terrence on 2019/10/25.
//

#import "Target_A.h"
#import "AViewController.h"
@implementation Target_A
- (UIViewController *)Action_viewController:(NSDictionary *)paramter {
    AViewController *aVC = [AViewController new];
    return aVC;
}
@end
