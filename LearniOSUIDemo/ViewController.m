//
//  ViewController.m
//  LearniOSUIDemo
//
//  Created by william fee on 2018/11/9.
//  Copyright © 2018年 william fee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (void)buttonClick:(UIButton *)sender
{
    [_redTextField setAdjustsFontSizeToFitWidth:true];
    [_redTextField setMinimumFontSize:12];
    _redTextField.text = [NSString stringWithFormat:@"被按下的按键是：%@", sender.currentTitle];
}


@end
