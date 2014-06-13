//
//  BGMViewController.m
//  Animation Test
//
//  Created by 馬 岩 on 14-6-13.
//  Copyright (c) 2014年 馬 岩. All rights reserved.
//

#import "BGMViewController.h"

@interface BGMViewController ()

@end

@implementation BGMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	// get elements with tag
	UILabel* outerLabel = (UILabel*)[self.view viewWithTag:1];
	UIView* containerView = [self.view viewWithTag:2];
	UILabel* innerLabel = (UILabel*)[self.view viewWithTag:3];
	
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
