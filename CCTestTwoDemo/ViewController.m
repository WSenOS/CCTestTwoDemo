//
//  ViewController.m
//  CCTestTwoDemo
//
//  Created by sen on 2019/1/10.
//  Copyright © 2019 sen. All rights reserved.
//

#import "ViewController.h"
#import "CCListController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableArray * arr = [NSMutableArray array];
        for (NSInteger i = 0; i < 10; i++) {
            CCModel * m = [[CCModel alloc] init];
            m.name = [NSString stringWithFormat:@"%zdcmodel",i];
            [arr addObject:m];
        }
        CCListController * vc = [[CCListController alloc] init];
        vc.dataArray = arr;
        [self presentViewController:vc animated:YES completion:nil];
    });
}


@end
