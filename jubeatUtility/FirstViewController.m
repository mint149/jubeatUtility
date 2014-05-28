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

UILabel *noteLabel;
UILabel *scoreLabel;
UILabel *greatLabel;
UITextField *noteTextField;
UITextField *scoreTextField;
UITextField *greatTextField;

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//TODO:変数名がカッコ悪い。書き直す。
	//TODO:キーボードをnumberpadに変更。
	//TODO:レイアウトの方法を調べる
	//	TODO:計算メソッドの中身を実装。
	noteLabel = [[UILabel alloc] init];
	noteLabel.frame = CGRectMake(10, 10, 100, 50);
	noteLabel.text = @"ノーツ数";
	[self.view addSubview:noteLabel];
	
	scoreLabel = [[UILabel alloc] init];
	scoreLabel.frame = CGRectMake(10, 60, 100, 100);
	scoreLabel.text = @"目標スコア";
	[self.view addSubview:scoreLabel];
	
	greatLabel = [[UILabel alloc] init];
	greatLabel.frame = CGRectMake(10, 110, 100, 150);
	greatLabel.text = @"許容グレ数";
	[self.view addSubview:greatLabel];
	
	noteTextField = [[UITextField alloc]init];
	noteTextField.frame = CGRectMake(110, 10, 200, 50);
	noteTextField.placeholder = @"ノーツ数を入力";
	noteTextField.keyboardType = UIKeyboardTypeNumberPad;
	[self.view addSubview:noteTextField];
	
	scoreTextField = [[UITextField alloc]init];
	scoreTextField.frame = CGRectMake(110, 60, 200, 100);
	scoreTextField.placeholder = @"目標スコアを入力";
	scoreTextField.keyboardType = UIKeyboardTypeNumberPad;
	[self.view addSubview:scoreTextField];
	
	greatTextField = [[UITextField alloc]init];
	greatTextField.frame = CGRectMake(110, 110, 200, 150);
	greatTextField.placeholder = @"許容グレ数";
	greatTextField.keyboardType = UIKeyboardTypeNumberPad;
	[self.view addSubview:greatTextField];
	
	UIButton *calcGreat = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	calcGreat.frame = CGRectMake(10, 130, 100, 170);
	[calcGreat setTitle:@"計算" forState:UIControlStateNormal];
	[calcGreat addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchDown];
	[self.view addSubview:calcGreat];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)calc:(UIButton*)button{
	int notes = [noteTextField.text intValue];
	int targetScore = [scoreTextField.text intValue];
	int allowGreat = 0;
	for (allowGreat = 0; allowGreat < notes; allowGreat++) {
		double a = 1000000 * (notes - 0.3*allowGreat) / notes;
		double b = 0.9 * (int)a;
		int c = (int)b + 100000;
		NSLog(@"%d",c);
		if (c < targetScore) {
			allowGreat+=1;
			break;
		}
	}
	NSLog(@"%d",allowGreat);
	greatTextField.text = [NSString stringWithFormat:@"%d",allowGreat];
}

@end
