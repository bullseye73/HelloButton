//
//  ViewController.m
//  HelloButton
//
//  Created by Claude C. Jeong on 2017. 12. 27..
//  Copyright © 2017년 Claude. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <WKNavigationDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Start---");
    _titleLabel.text=@"";
    _titleSwitch.text=@"";
    
    //self.webView = [[WKWebView alloc] initWithFrame:self.view.frame];
    
    self.webView = [[WKWebView alloc] initWithFrame:self.stWebView.frame];
    [self.webView setNavigationDelegate:self];
    [self.view addSubview:self.webView];
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.google.co.kr"]];
    [self.webView loadRequest:request];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onBtnTouch:(UIButton *)sender {
    NSLog(@"test button touch");
    
    //NSURL *myURL = [NSURL URLWithString:@"http://www.google.com"];
    //NSURLRequest *myURLReq = [NSURLRequest requestWithURL:myURL];
    //[self.webView loadRequest:myURLReq];
    
    _titleLabel.text = @"Hello Button test";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OnSwitchValueChange:(id)sender {
    NSLog(@"Switch touch");
    
    _titleSwitch.text = [NSString stringWithFormat:@"The switch is %@", _switchBtn.isOn ? @"ON" : @"OFF"];
}

#pragma mark - WKNavigationDelegate
- (void)webView:(WKWebView *)webView didCommitNavigation:(null_unspecified WKNavigation *)navigation {
    NSLog(@"1. didCommitNavigation");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation {
    NSLog(@"2. didFinishNavigation");
}

- (void)webView:(WKWebView *)webView didFailNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error {
    NSLog(@"3. didFailNavigation");
}

@end
