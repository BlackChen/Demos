//
//  ViewController.m
//  URLTest
//
//  Created by Black_Chen_ on 2017/4/19.
//  Copyright © 2017年 Black_Chen_. All rights reserved.
//

#import "ViewController.h"
#import "URLTest-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = [UIColor grayColor];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 30);
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];

    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick{

    UIAlertController *alet = [[UIAlertController alloc]init];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

    }];
    [alet addAction:action];
    action = [UIAlertAction actionWithTitle:@"Swift" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"swift");
        SwiftViewController *swift = [[SwiftViewController alloc]init];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:swift];
        [self presentViewController:nav animated:YES completion:^{
            
        }];
    }];

    [alet addAction:action];
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"BasketballApp://"]]) {
        action = [UIAlertAction actionWithTitle:@"Basketball" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"BasketballApp://"] options:nil completionHandler:^(BOOL success) {

            }];
        }];
        [alet addAction:action];
    }

    [self presentViewController:alet animated:YES completion:^{

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
