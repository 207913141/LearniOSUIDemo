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
    _redTextField.keyboardType = UIKeyboardTypeNumberPad;
    _greenTextField.keyboardType = UIKeyboardTypeNumberPad;
    _blueTextField.keyboardType = UIKeyboardTypeNumberPad;
    [self resetTaskValue];
    
    //[_goButton setBackgroundImage:[UIImage imageNamed:@"button_go.png"] forState:UIControlStateNormal];
    //[_goButton setTitle:@"go" forState:UIControlStateNormal];
    //[self.view addSubview:_goButton];
    _redTextField.returnKeyType = UIReturnKeyDone;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)log:(NSString *)message
{
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"奏折" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"朕已阅" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:true completion:nil];
}

- (void)resetTaskValue
{
    _redTextField.text = nil;
    _greenTextField.text = nil;
    _blueTextField.text = nil;
    _redTextField.placeholder = @"0";
    _greenTextField.placeholder = @"0";
    _blueTextField.placeholder = @"0";
    _redNumber = 0;
    _greenNumber = 0;
    _blueNumber = 0;
    _label.text = [NSString stringWithFormat:@"%d", arc4random() % 28];
}

- (void)buttonClick:(UIButton *)sender
{
    [self resetTaskValue];
}

- (BOOL)isTaskFinished
{
    if((_redNumber + _greenNumber + _blueNumber) == _label.text.intValue)
    {
        return true;
    }
    else
        return false;
}

- (void)calculateButtonClick:(UIButton *)sender
{
    if(true == [self isTaskFinished])
    {
        [self log:@"答对了，你很棒！"];
        [self resetTaskValue];
    }
    else
    {
        [self log:@"不对哦，再试一次！"];
    }
}

- (void)redTextFieldEditEnd:(UITextField *)sender
{
//    NSLog(@"%@", sender.text);
    _redNumber = sender.text.intValue;
    [_redTextField resignFirstResponder];
}

- (void)greenTextFieldEditEnd:(UITextField *)sender
{
//    NSLog(@"%@", sender.text);
    _greenNumber = sender.text.intValue;
    [_greenTextField resignFirstResponder];
}

- (void)blueTextFieldEditEnd:(UITextField *)sender
{
//    NSLog(@"%@", sender.text);
    _blueNumber = sender.text.intValue;
    [_blueTextField resignFirstResponder];
}

- (void)dismissKeyboard:(id)sender
{
    NSLog(@"释放键盘");
    [sender resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return true;
}



@end
