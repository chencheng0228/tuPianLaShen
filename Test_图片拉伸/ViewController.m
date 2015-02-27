//
//  ViewController.m
//  Test_图片拉伸
//
//  Created by admin on 15-2-2.
//  Copyright (c) 2015年 ___CC___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //有拉伸的图片
    UIImage *image = [UIImage imageNamed:@"chatto_bg_normal"];
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(35, 20, 20, 20)];
    //[image alignmentRectInsets];
    UIButton *buton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:buton];
    [buton setBackgroundImage:image forState:UIControlStateNormal];
    
    //没有拉伸的图片
    UIImage *image2 = [UIImage imageNamed:@"chatto_bg_normal"];
    UIButton *buttn = [[UIButton alloc] initWithFrame:CGRectMake(0, 220, 200, 200)];
    [buttn setBackgroundImage:image2 forState:UIControlStateNormal];
    [self.view addSubview:buttn];
    
        
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
