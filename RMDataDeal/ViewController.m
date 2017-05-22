//
//  ViewController.m
//  RMDataDeal
//
//  Created by 王林 on 2017/5/22.
//  Copyright © 2017年 wanglin. All rights reserved.
//

#import "ViewController.h"
#import "RMFirstModel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSDictionary *dict = @{@"doctorId" : @"1001", @"doctorUrl" : @"", @"doctorName" : @"张三",
						   @"consultList" : @[@{@"consultName" : @"图文", @"money" : @"100元"},
											  @{@"consultName" : @"电话", @"money" : @"200元"},
											  @{@"consultName" : @"私人医生", @"money" : @"2000元"}],
						   @"evaluateList" : @[@{@"evaluateTitle" : @"很满意", @"evaluateNum" : @"1001"},
											   @{@"evaluateTitle" : @"满意", @"evaluateNum" : @"101"},
											   @{@"evaluateTitle" : @"不满意", @"evaluateNum" : @"1"}]};
	RMFirstModel *model = [RMFirstModel itemWithDic:dict];
	NSLog(@"model = %@", model);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
