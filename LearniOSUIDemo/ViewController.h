//
//  ViewController.h
//  LearniOSUIDemo
//
//  Created by william fee on 2018/11/9.
//  Copyright © 2018年 william fee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UITextField *redTextField;
@property IBOutlet UITextField *greenTextField;
@property IBOutlet UITextField *blueTextField;
- (IBAction)buttonClick:(UIButton *)sender;

- (IBAction)redTextFieldClick:(UITextField *)sender;
- (IBAction)greenTextFieldClick:(UITextField *)sender;
- (IBAction)blueTextFieldClick:(UITextField *)sender;

@end

