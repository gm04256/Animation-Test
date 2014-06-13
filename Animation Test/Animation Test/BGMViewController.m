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

- (IBAction)doTransformation:(id)sender
{
	// get elements with tag
	UILabel* outerLabel = (UILabel*)[self.view viewWithTag:1];
	UIView* containerView = [self.view viewWithTag:2];
	UILabel* innerLabel = (UILabel*)[self.view viewWithTag:3];
	
	// translate the outer label's layer
	NSLog(@"Frame of outerLabel before layer translation: %@", NSStringFromCGRect(outerLabel.frame));
	
	CALayer* outerLayer = outerLabel.layer;
	NSLog(@"anchorPoint: %f, %f, %f", outerLayer.anchorPoint.x, outerLayer.anchorPoint.y, outerLayer.anchorPointZ);
	
	//	CATransform3D translation = CATransform3DMakeTranslation(100, 100, 0);
	//	[outerLayer setTransform:translation];
	
		CATransform3D rotation = CATransform3DMakeRotation(M_PI / 6, outerLayer.anchorPoint.x, outerLayer.anchorPoint.y, outerLayer.anchorPointZ);
		[outerLayer setTransform:rotation];
	
//	CATransform3D scale = CATransform3DMakeScale(2, 2, 1);
//	[outerLayer setTransform:scale];
	//	CGAffineTransform affineScale = CATransform3DGetAffineTransform(scale);
	//	[outerLayer setAffineTransform: affineScale];
	
	NSLog(@"Frame of outerLabel after layer translation: %@", NSStringFromCGRect(outerLabel.frame));
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
