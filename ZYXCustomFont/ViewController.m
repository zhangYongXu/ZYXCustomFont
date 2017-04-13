//
//  ViewController.m
//  ZYXCustomFont
//
//  Created by 极客天地 on 2017/4/10.
//  Copyright © 2017年 极客天地. All rights reserved.
//

#import "ViewController.h"


#import "GWRootNavigationViewController.h"

#import "ZYXRGBColorSelectView.h"
#import "ZYXCustomFontSelectView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectFontBtnClicked:(id)sender {
    [self.view endEditing:YES];
    [ZYXCustomFontSelectView popViewConfirmSelectedBlock:^(ZYXCustomFontSelectView *view, ZYXFontModel *fontModel) {
        self.textView.font = [fontModel fontWithFontSize:self.textView.font.pointSize];
    }];
    
}

- (IBAction)selectColorBtnClicked:(id)sender {
    [self.view endEditing:YES];
    [ZYXRGBColorSelectView popViewConfirmSelectedBlock:^(ZYXRGBColorSelectView *view, UIColor *color) {
        self.textView.textColor = color;
    }];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
@end
