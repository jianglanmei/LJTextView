//
//  ViewController.m
//  LJTextView
//
//  Created by 123 on 2020/7/2.
//  Copyright © 2020年 123. All rights reserved.
//

#import "ViewController.h"
#import "UITextView+LJPlaceHolder.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(50, 200, 200, 200)];
    textView.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:textView];
    [textView lj_setPlacePlaceHolder:@"这是默认字哦" color:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
