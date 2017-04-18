//
//  ViewController.m
//  JS_OCTEest
//
//  Created by 陈黔 on 2016/12/10.
//  Copyright © 2016年 陈黔. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    _oracleWebView = [[UIWebView alloc]initWithFrame:self.view.frame];
    _oracleWebView.scalesPageToFit = YES;
    _oracleWebView.delegate = self;
    [self.view addSubview:_oracleWebView];

    NSString *urlStr = @"http://139.224.196.49/svnrepos/tpqiuyuan/public/index.php/admin/word/allwords?u_id=100011";

    NSLog(@"请求的链接: %@", urlStr);

    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
    [_oracleWebView loadRequest:request];
}

//加载完成
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    _jsContext = [_oracleWebView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    _jsContext[@"tianbai.Call"] = ^{
        NSArray *args = [JSContext currentArguments];
        for (JSValue *jsVal in args) {
            NSLog(@"%@", jsVal.toString);
        }
        NSLog(@"测试");
    };

    _jsContext[@"tianbai"] = self;


    _jsContext.exceptionHandler = ^(JSContext *context, JSValue *exceptionValue) {
        context.exception = exceptionValue;
        NSLog(@"异常信息：%@", exceptionValue);
    };
}

- (void)jiayou:(NSString *)string{
    NSLog(@"打印 : %@", string);
}

- (void)Call:(NSString *)string{
    NSLog(@"打印 : %@", string);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
