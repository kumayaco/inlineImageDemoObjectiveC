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
    
    NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
    UIImage *image = [UIImage imageNamed:@"1f601.png"];
    
    textAttachment.image = [self imageWithImage:image scaleToSize:CGSizeMake(17, 16)];
    
    NSAttributedString *iconAttributedString = [NSAttributedString attributedStringWithAttachment:textAttachment];
    
    [mutableAttributedString replaceCharactersInRange:NSMakeRange(16, 2) withAttributedString:iconAttributedString];
    
    self.label.attributedText = mutableAttributedString;
    
    [self.view addSubview:self.label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (UIImage *)imageWithImage:(UIImage *)image scaleToSize:(CGSize)size
{
    UIImage *newImage = nil;
    
    UIGraphicsBeginImageContextWithOptions(size, false, 0.0);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
