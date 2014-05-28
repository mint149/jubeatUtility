//
//  FirstViewController.m
//  jubeatUtility
//
//  Created by 河野貴宏 on 2014/05/28.
//  Copyright (c) 2014年 Takahiro Kawano. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//TODO:カッコ悪い。書き直す。
	UILabel *noteLabel = [[UILabel alloc] init];
	noteLabel.frame = CGRectMake(10, 10, 100, 50);
	noteLabel.text = @"ノーツ数";
	[self.view addSubview:noteLabel];
	
	UILabel *scoreLabel = [[UILabel alloc] init];
	scoreLabel.frame = CGRectMake(10, 60, 100, 100);
	scoreLabel.text = @"目標スコア";
	[self.view addSubview:scoreLabel];
	
	UILabel *greatLabel = [[UILabel alloc] init];
	greatLabel.frame = CGRectMake(10, 110, 100, 150);
	greatLabel.text = @"許容グレ数";
	[self.view addSubview:greatLabel];
	
	UITextField *noteTextField = [[UITextField alloc]init];
	noteTextField.frame = CGRectMake(110, 10, 200, 50);
	noteTextField.placeholder = @"ノーツ数を入力";
	[self.view addSubview:noteTextField];
	
	UITextField *scoreTextField = [[UITextField alloc]init];
	scoreTextField.frame = CGRectMake(110, 60, 200, 100);
	scoreTextField.placeholder = @"目標スコアを入力";
	[self.view addSubview:scoreTextField];
	
	UITextField *greatTextField = [[UITextField alloc]init];
	greatTextField.frame = CGRectMake(110, 110, 200, 150);
	greatTextField.placeholder = @"許容グレ数";
	[self.view addSubview:greatTextField];
		
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
