//
//  ViewController.m
//  VariBtn
//
//  Created by Fenix on 16/6/21.
//  Copyright © 2016年 Fenix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnClicked:(id)sender {
    UIButton *b0 = (UIButton*)sender;
    if (!_selectedBtn) {
        _selectedBtn = [[UIButton alloc] init];
    }
    if (b0 == _selectedBtn) {
        [b0 setBackgroundColor:[UIColor redColor]];
    } else {
        _selectedBtn.selected = NO;
        [_selectedBtn setBackgroundColor:[UIColor whiteColor]];
        b0.selected = YES;
        _selectedBtn = b0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
