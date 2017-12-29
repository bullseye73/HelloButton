//
//  ViewController.h
//  HelloButton
//
//  Created by Claude C. Jeong on 2017. 12. 27..
//  Copyright © 2017년 Claude. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UISwitch *switchBtn;

- (IBAction)onBtnTouch:(UIButton *)sender ;
- (IBAction)OnSwitchValueChange:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *stWebView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleSwitch;
@property (weak, nonatomic) IBOutlet WKWebView *webView;

@end

