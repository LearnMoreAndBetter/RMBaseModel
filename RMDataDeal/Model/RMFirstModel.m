//
//  RMFirstModel.m
//  RMDataDeal
//
//  Created by 王林 on 2017/5/22.
//  Copyright © 2017年 wanglin. All rights reserved.
//

#import "RMFirstModel.h"

@implementation RMFirstModel


+(instancetype)itemWithDic:(NSDictionary *)dic
{
	RMFirstModel *model = [[RMFirstModel alloc] initWithDictionary:dic];
	
	//字典中嵌套数组的处理方式
	NSMutableArray *consultLists = [[NSMutableArray alloc] init];
	NSArray *list1 = [dic objectForKey:@"consultList"];
	for (NSDictionary *subDic in list1)
	{
		[consultLists addObject:[[RMSecondModel alloc]initWithDictionary:subDic]];
	}
	model.consultList = consultLists;
	
	NSMutableArray *evaluateList = [[NSMutableArray alloc] init];
	NSArray *list2 = [dic objectForKey:@"evaluateList"];
	for (NSDictionary *subDic in list2)
	{
		[evaluateList addObject:[[RMThirdModel alloc]initWithDictionary:subDic]];
	}
	model.evaluateList = evaluateList;
	
	return model;
}


@end


@implementation RMSecondModel

@end


@implementation RMThirdModel

@end
