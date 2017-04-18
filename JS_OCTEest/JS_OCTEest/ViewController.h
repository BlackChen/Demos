//
//  ViewController.h
//  JS_OCTEest
//
//  Created by 陈黔 on 2016/12/10.
//  Copyright © 2016年 陈黔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol jsDelegate <JSExport>

- (void)jiayou:(NSString *)string;
- (void)Call:(NSString *)string;
@end
@interface ViewController : UIViewController<jsDelegate, UIWebViewDelegate>

@property (nonatomic, strong) JSContext *jsContext;

@property (nonatomic, strong)UIWebView *oracleWebView;

@end

