//
//  ViewController.m
//  inlineImageDemoObjectiveC
//
//  Created by vincent on 2015/02/07.
//  Copyright (c) 2015年 Vincent Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    self.label.center = self.view.center;
    self.label.textAlignment = NSTextAlignmentCenter;
    
    NSMutableAttributedString *mutableAttributedString = [[NSMutableAttributedString alloc] initWithString:@"this is a smile :)"];
    
    self.label.attributedText = mutableAttributedString;
    
    [self.view addSubview:self.label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
