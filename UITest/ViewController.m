//
//  ViewController.m
//  UITest
//
//  Created by Heym on 2018/12/4.
//  Copyright © 2018 HHYYMM. All rights reserved.
//

#import "ViewController.h"
#import "HHTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HHTextField *text = [HHTextField new];
    [self.view addSubview:text];
    
    text.frame = CGRectMake(100, 100, 100, 50);
    
    text.text = @"IIII";
    text.placeholder = @"EEEE";
    
    text.backgroundColor = [UIColor redColor];
    text.textColor = [UIColor blackColor];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
