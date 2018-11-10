//
//  ViewController.h
//  LearniOSUIDemo
//
//  Created by william fee on 2018/11/9.
//  Copyright © 2018年 william fee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property int redNumber;
@property int greenNumber;
@property int blueNumber;

@property UIAlertAction *alert;

@property IBOutlet UILabel *label;

@property IBOutlet UITextField *redTextField;
@property IBOutlet UITextField *greenTextField;
@property IBOutlet UITextField *blueTextField;

@property IBOutlet UIButton *goButton;

- (IBAction)buttonClick:(UIButton *)sender;
- (IBAction)calculateButtonClick:(UIButton *)sender;

- (IBAction)redTextFieldEditEnd:(UITextField *)sender;
- (IBAction)greenTextFieldEditEnd:(UITextField *)sender;
- (IBAction)blueTextFieldEditEnd:(UITextField *)sender;
- (IBAction)dismissKeyboard:(id)sender;

//- (IBAction)redTextFieldEditChanged:(UITextField *)sender;
//- (IBAction)greenTextFieldEditChanged:(UITextField *)sender;
//- (IBAction)blueTextFieldEditChanged:(UITextField *)sender;

@end

